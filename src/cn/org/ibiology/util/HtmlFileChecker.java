package cn.org.ibiology.util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

import javax.servlet.ServletContext;

import org.jboss.logging.Logger;

import cn.org.ibiology.hbm.model.IbiologySpeciesModel;

/**
 * HTML file 检查类
 * @author liushaofeng
 * @date 2015-1-1
 */
public final class HtmlFileChecker
{
    public static final String FILE_TYPE_SPECIES = "species";
    public static final String FILE_TYPE_NEWS = "news";
    public static final String FILE_TYPE_ARTICLE = "article";

    /**
     * 判断文件是否存在
     * @param servletContext servletContext
     * @param fileType 文件类型
     * @param id 文件ID号
     * @param dataModel 该ID的模型数据
     * @return 是否存在
     */
    public static File handFile(ServletContext servletContext, String fileType, int id,
                                IbiologySpeciesModel dataModel)
    {
        String filePath = "";
        // 检查生成数据文件
        if (FileUtil.isWindows())
        {
            filePath = servletContext.getRealPath("/");
        } else
        {
            filePath = "/home/bae/app/";
        }

        File staticFile = new File(filePath + fileType + File.separator + id + ".html");
        if (!staticFile.exists())
        {
            try
            {
                File folder = new File(filePath + fileType);
                if (!folder.exists())
                {
                    folder.mkdirs();
                }
                staticFile.createNewFile();
            } catch (IOException e)
            {
                Logger.getLogger(HtmlFileChecker.class).error(e.getMessage(), e);
                return null;
            }
            // write data to file
            writeDataToFile(staticFile, fileType, filePath, dataModel, servletContext);
        }
        return staticFile;
    }

    private static void writeDataToFile(File staticFile, String fileType, String filePath,
                                        IbiologySpeciesModel dataModel, ServletContext servletContext)
    {
        BufferedWriter bufferedWriter = null;
        BufferedReader tplReader = null;
        try
        {
            bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(
                staticFile.getPath()), "UTF-8"));
            tplReader = new BufferedReader(new InputStreamReader(new FileInputStream(
                servletContext.getRealPath("/templates" + File.separator + fileType + ".tpl")), "UTF-8"));
            String line = "";
            while ((line = tplReader.readLine()) != null)
            {
                bufferedWriter.write(resovleData(line, dataModel));
            }
            bufferedWriter.flush();
        } catch (IOException e)
        {
            Logger.getLogger(HtmlFileChecker.class).error(e.getMessage(), e);
        } finally
        {
            try
            {
                if (bufferedWriter != null)
                {
                    bufferedWriter.close();
                }
                if (tplReader != null)
                {
                    tplReader.close();
                }
            } catch (IOException e)
            {
                Logger.getLogger(HtmlFileChecker.class).error(e.getMessage(), e);
            }
        }
    }

    private static String resovleData(String line, IbiologySpeciesModel dataModel)
    {
        if (line.contains("{SPECIES}"))
        {
            line = line.replace("{SPECIES}", dataModel.getSpeciesName());
        }

        if (line.contains("{LINK_HOME}"))
        {
            line = line.replace("{LINK_HOME}", "../index");
        }
        return line;
    }
}
