package cn.org.ibiology.bae.bcs;

import java.io.File;
import java.util.List;

import org.apache.log4j.Logger;

import cn.org.ibiology.util.DateUtil;
import cn.org.ibiology.util.FileUtil;

import com.baidu.inf.iis.bcs.BaiduBCS;
import com.baidu.inf.iis.bcs.auth.BCSCredentials;
import com.baidu.inf.iis.bcs.auth.BCSSignCondition;
import com.baidu.inf.iis.bcs.http.HttpMethodName;
import com.baidu.inf.iis.bcs.model.BCSClientException;
import com.baidu.inf.iis.bcs.model.BCSServiceException;
import com.baidu.inf.iis.bcs.model.ObjectMetadata;
import com.baidu.inf.iis.bcs.request.GenerateUrlRequest;
import com.baidu.inf.iis.bcs.request.PutObjectRequest;
import com.baidu.inf.iis.bcs.response.BaiduBCSResponse;

/**
 * 百度云存储工具类
 * 
 * @author liushaofeng
 * @date 2014-11-19
 */
public final class BCSUtil
{
	// ----------------------------------------
	static String host = "bcs.duapp.com";
	static String accessKey = "QdUwoaIjS61b6XAGmXkQ3WGT";
	static String secretKey = "FlDLmM6LcFGBZyvLhtvbsWqBlOZ0GZnU";
	static String bucket = "ibiologyimage";

	// ----------------------------------------

	/**
	 * 获取服务器上所有的图片
	 * 
	 * @return 获取服务器上的所有图片信息
	 */
	public static List<String> getImageList()
	{
		return null;
	}

	/**
	 * 上传图片到指定目录
	 * @param srcFile 源文件
	 * @param isNewsImg 是否是新闻图片
	 * @return 返回服务器的图片访问地址
	 */
	public static String upload(File srcFile, boolean isNewsImg)
	{
		if (isNewsImg)
		{
			return uploadNewsImage(srcFile);
		}
		else
		{
			return null;
		}
	}

	private static String uploadNewsImage(File srcFile)
	{
		/**
		 * 检查文件在服务器是否已经存在，这里的功能还待完善哦！
		 */
		
		//上传文件
		BCSCredentials credentials = new BCSCredentials(accessKey, secretKey);
		BaiduBCS baiduBCS = new BaiduBCS(credentials, host);
		baiduBCS.setDefaultEncoding("UTF-8"); // Default UTF-8
		try
		{
			String objPath = "/news/" + DateUtil.getCurrentTime("yyyyMMddHHmmsss") + FileUtil.getExetension(srcFile);
			putObjectByFile(baiduBCS, srcFile, objPath);
			return generateUrl(baiduBCS, objPath);
		}
		catch (BCSServiceException e)
		{
			Logger.getLogger(BCSUtil.class).warn(
					"Bcs return:" + e.getBcsErrorCode() + ", " + e.getBcsErrorMessage() + ", RequestId="
							+ e.getRequestId());
		}
		catch (BCSClientException e)
		{
			Logger.getLogger(BCSUtil.class).error(e.getMessage(), e);
		}
		return null;
	}

	private static void putObjectByFile(BaiduBCS baiduBCS, File srcFile, String desFileName)
	{
		PutObjectRequest request = new PutObjectRequest(bucket, desFileName, srcFile);
		ObjectMetadata metadata = new ObjectMetadata();
		// metadata.setContentType("text/html");
		request.setMetadata(metadata);
		BaiduBCSResponse<ObjectMetadata> response = baiduBCS.putObject(request);
		ObjectMetadata objectMetadata = response.getResult();
		Logger.getLogger(BCSUtil.class).info("x-bs-request-id: " + response.getRequestId());
		Logger.getLogger(BCSUtil.class).info(objectMetadata);
	}

	private static String generateUrl(BaiduBCS baiduBCS, String objPath)
	{
		GenerateUrlRequest generateUrlRequest = new GenerateUrlRequest(HttpMethodName.GET, bucket, objPath);
		generateUrlRequest.setBcsSignCondition(new BCSSignCondition());
		return baiduBCS.generateUrl(generateUrlRequest);
	}
}
