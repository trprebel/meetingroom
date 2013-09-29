<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="/jstl/c.tld"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'log.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <table align="center" border="1">
  <caption>操作日志</caption>
  	<tr>
  		<td>用户</td>
  		<td>操作</td>
  		<td>时间</td>
  	</tr>
  	<c:forEach var="log" items="${logs}">
	<tr>
		<td>${log.username }</td>
		<td>${log.operate }</td>
		<td>${log.time }</td>
	</tr>
	</c:forEach>
  </table>
  </body>
</html>
