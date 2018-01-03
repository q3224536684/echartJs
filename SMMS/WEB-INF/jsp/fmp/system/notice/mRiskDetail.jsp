<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%@ taglib prefix="fmp" uri="/WEB-INF/tlds/fmp-tags.tld"%>
<%@ page import="java.util.List"%>    
<%@ page import="java.util.Iterator"%>  
<%@ page import="java.util.Map"%>  
<%@ page import="java.util.Collection"%> 
<%@ page import="com.zstar.fmp.core.frame.tablemodel.TableModel"%>
<%@ page import="com.zstar.fmp.core.frame.tablemodel.TableField"%>
<%@ page import="com.zstar.fmp.core.base.FMPContex"%>
<%@ page import="com.zstar.fmp.web.component.*"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="com.zstar.fmp.utils.Page"%> 

<%
    
	 String rootPath = request.getContextPath();
     Map<String,Object> detailData = ( Map<String,Object>)request.getAttribute("detailData");
     String validDate = (String)detailData.get("VALIDDATE");  //公共有效期
		String creatTime = (String)detailData.get("CREATTIME");
		String MsgContent = (String) detailData.get("MSGCONTENT");
		
		 if(validDate==null){
				validDate="";
				
			}
 %> 


<html>
<head>
<jsp:include page="/WEB-INF/jsp/fmp/frame/common/partialJsp/headinclude.jsp" />
<title>消息提醒</title>
<link href="<%=rootPath%>/styles/fmp/homePage.css" rel="stylesheet" type="text/css" />

</head>
<body>

	<div>
	  <table cellpadding="3" cellspacing="5" >
	      <tr>
	      <td style="width:70px;">
	        <a style="font-size:15px;font-weight: bold;" href="javascript: history.back();"> &lt;&lt;返回 </a>
		  </td>
		  <td style="width:50px;">
	         <a style="font-size:15px;font-weight: bold;" href="<%=rootPath%>/fmp/system/notice/NoticeBiz/ShowNotice?moduleId=s_md_fhzy&tableModelId=SAffiche" >首页</a>
	      </td>
	     </tr>
	   </table>
	</div>
	
		<div class="home_div_main">
		
				  <div class="home_div_top">
					<table style="width:100%">
					<tr>
						<td class="m_icon_xiaoxi">消息提醒</td>
						<!--
						<td class="m_icon2">
						<a href="#" onclick="showPage()" >更多>></a>&nbsp;
						</td>
						-->
					</tr>
					</table>
				  </div>
				  <div class="clear"></div>
				  
		
				  <div class="home_div_content">
				  <table style="width:100%">
				  	<tr>
			
				  		<td align="center" style="font-size:15px;color:#353E99;">发布时间：<%=creatTime %></td>
				  	</tr>
				  </table>
				  </div>
				  
				  <div class="home_div_content">
				  <hr>
					<ul>
					  <li>
						<%=MsgContent %>
					 </li>
					</ul>
				  </div>
			
		  </div>	 <!-- home_div_main end-->



</body>
</html>
<jsp:include page="/WEB-INF/jsp/fmp/frame/common/partialJsp/afterinclude.jsp" /> 