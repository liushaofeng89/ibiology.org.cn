package cn.org.ibiology.service;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.org.ibiology.hbm.dao.IbiologyDAO;
import cn.org.ibiology.hbm.model.IbiologySpeciesModel;
import cn.org.ibiology.util.HtmlFileChecker;
import cn.org.ibiology.util.IbiologyIDUtil;
import cn.org.ibiology.util.IbiologyIntValidator;

/**
 * 物种信息处理器
 * @author liushaofeng
 * @date 2014-12-28
 */
public class IbiologySpeciesService extends HttpServlet
{
    public static final int UNKNOWN = -1;
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public IbiologySpeciesService()
    {
        super();
    }

    /**
     * 物种数据获取处理
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,
        IOException
    {
        String uri = request.getRequestURI().toString();
        if (!uri.contains("species/"))
        {
            return;
        }
        String idAddress = uri.substring(uri.indexOf("species/") + 8);
        if (idAddress.isEmpty())
        {
            // 请求物种目录
            showSpeciesList();
        } else
        {
            // 请求某一物种
            resolveSpecies(response, idAddress);
        }
    }

    private void resolveSpecies(HttpServletResponse response, String idAddress) throws IOException,
        FileNotFoundException
    {
        int showId = resovleAddress(idAddress);
        IbiologySpeciesModel dataModel = (IbiologySpeciesModel) IbiologyDAO.findByID(
            "IbiologySpeciesModel", IbiologyIDUtil.decompilation(showId));
        if (showId != UNKNOWN)
        {
            File staticFile = HtmlFileChecker.handFile(getServletContext(),
                HtmlFileChecker.FILE_TYPE_SPECIES, showId, dataModel);
            if (staticFile != null)
            {
                response.setContentType("text/html;charset=UTF-8");
                PrintWriter out = response.getWriter();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(
                    new FileInputStream(staticFile), "UTF-8"));
                String line = null;
                while ((line = bufferedReader.readLine()) != null)
                {
                    out.write(line.trim());
                }
                bufferedReader.close();
            } else
            {
                System.out.println("get HTML file fail,the file detail：" + staticFile);
            }
        } else
        {
            response.sendRedirect("../error.jsp");
        }
    }

    /**
     * 解析ID成功则返回ID，否则返回-1（会跳转到错误页面）
     * @param idAddress 待解析的ID数据
     * @return 解析后的ID
     */
    private int resovleAddress(String idAddress)
    {
        String idStr = idAddress;
        if (idAddress.endsWith(".html"))
        {
            idStr = idAddress.substring(0, idAddress.lastIndexOf(".html"));
        }
        Integer id = new IbiologyIntValidator().isInt(idStr);
        if (id != null)
        {
            return id;
        }
        return UNKNOWN;
    }

    private void showSpeciesList()
    {

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException
    {
        // TODO Auto-generated method stub
    }

}
