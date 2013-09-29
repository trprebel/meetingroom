<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:directive.page import="com.bean.User"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
User user=(User)session.getAttribute("user");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <script type="text/javascript">
  function submitfun()
  {
  	var mrname=document.getElementById("mrname");
  	var floor=document.getElementById("floor");
  	var station=document.getElementById("station");
  	var department=document.getElementById("department");
	if(mrname==""||mrname==null)
	{
		alert("会议室名不能为空！");
		return;
	}
	else if(floor==""||floor==null)
	{
		alert("楼层不能为空！");
		return;
	}
	else if(station==""||station==null)
	{
		alert("位置不能为空！");
		return;
	}
	else if(department==""||department==null)
	{
		alert("所属部门不能为空！");
		return;
	}
	var f1=document.getElementById("cmrform");
	f1.submit();
  }
  </script>
  <body>
  <form action="createMR" name="cmrform" id="cmrform" method="post">
	<table align="center" id="createmr">
		<caption>创建会议室</caption>
		<tr>
			<td>会议室名称：</td>
			<td>
				<input type="text" name="mrname" id="mrname">
			</td>
		</tr>
		<tr>
			<td>楼层：</td>
			<td>
				<input type="text" name="floor" id="floor">
			</td>
		</tr>
		<tr>
			<td>位置：</td>
			<td>
				<input type="text" name="station" id="station">
			</td>
		</tr>
		<tr>
			<td>所属部门：</td>
			<td>
				<input type="text" name="department" id="department">
			</td>
		</tr>
		<tr>
			<td>状态：</td>
			<td>
				<select name="state" id="state">
					<option value="1" selected="selected">可用</option>
					<option value="0">不可用</option>
				</select>
			</td>
		</tr>
		<tr>
			<td><input type="button" onClick="javascript:submitfun()" value="创建"></td>
			<td><input type="reset" value="重置"></td>
		</tr>
	</table>
	</form>
		
  </body>
  <script type="text/javascript">
  if('${messages}'!="")
  {
  	alert('${messages}');
  }
  </script>
</html>
