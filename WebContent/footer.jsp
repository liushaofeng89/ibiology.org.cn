<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cn.org.ibiology.service.IbiologyIndexService,cn.org.ibiology.hbm.model.IbiologyIndexModel"%>
<hr/>
<footer>
	<%
	IbiologyIndexModel indexModel=(IbiologyIndexModel)getServletContext().getAttribute(IbiologyIndexService.INDEX_DATA_KEY);
	if(indexModel!=null)
	{
		Map<String,String> linksMap = indexModel.getLinksMap();
		if(!linksMap.isEmpty())
		{
			out.print("<div class='row'><div class='col-lg-12'><blockquote><p>友情链接</p><small>");
			for (String key : linksMap.keySet())
			{
				out.print("<a href='"+linksMap.get(key)+"' target='_blank'>"+key+"</a>&nbsp;&nbsp;");
			}
			out.print("</small></blockquote></div></div><hr/>");
		}
	}
	%>
	<div class="row">
		<div class="col-lg-12">
			<p>&copy; 2014 IBIOLOGY.ORG.CN, <a href="<%=request.getContextPath()%>/FAQ">All Rights Reserved</a> | <a href="http://www.miitbeian.gov.cn/">蜀ICP备14026954号</a></p>
		</div>
	</div>
</footer>
