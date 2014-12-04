package cn.org.ibiology.hbm.model;

/**
 * 用户返回数据模型
 * 
 * @author liushaofeng
 * @date 2014-12-4
 */
public class UserFeedbackModel extends AbstractModel
{
	private int id;
	private String qq;
	private String mail;
	private String content;

	private Boolean isRead = false;

	/**
	 * constructor
	 * @param qq qq
	 * @param email email
	 * @param content user feedback message
	 */
	public UserFeedbackModel(String qq, String email, String content)
	{
		this.qq = qq;
		this.mail = email;
		this.content = content;
	}

	public int getId()
	{
		return id;
	}

	public void setId(int id)
	{
		this.id = id;
	}

	public String getQq()
	{
		return qq;
	}

	public void setQq(String qq)
	{
		this.qq = qq;
	}

	public String getMail()
	{
		return mail;
	}

	public void setMail(String mail)
	{
		this.mail = mail;
	}

	public String getContent()
	{
		return content;
	}

	public void setContent(String content)
	{
		this.content = content;
	}

	public Boolean getIsRead()
	{
		return isRead;
	}

	public void setIsRead(Boolean isRead)
	{
		this.isRead = isRead;
	}

}
