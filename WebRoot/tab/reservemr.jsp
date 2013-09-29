<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="/jstl/c.tld"%>
<jsp:directive.page import="com.bean.MeetingRoom" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	List<MeetingRoom> mrs=(List<MeetingRoom>) session.getAttribute("mrlist");
	for(int i=0;i<mrs.size();i++)
	{
		if(mrs.get(i).getState()==0) mrs.remove(i);
	}
	pageContext.setAttribute("mrs",mrs);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'reservemr.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>
	<script language="javascript" type="text/javascript"
		src="<%=basePath%>My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript" src="js/jquery-1.6.js"></script>
	<script type="text/javascript">
  function reserve()
  { 
  	if($("#starttime").val()=="")
  	{
  		alert("开始时间不能为空！");
  		return;
  	}
  	if($("#endtime").val()=="")
  	{
  		alert("结束时间不能为空！");
  		return;
  	}
  	var now=Date();
  	var vstarttime =$("#starttime").val();
	vstarttime = vstarttime.replace(/-/g,"/");
	var st = new Date(vstarttime);
	
  	var vendtime =$("#endtime").val();
	vendtime = vendtime.replace(/-/g,"/");
	var et = new Date(vendtime);
	//alert("2");
	if(Date.parse(et)-Date.parse(st)<0)
	{
		alert("结束时间不能早于开始时间！");
		return;
	}
	if(Date.parse(now) - Date.parse(et)>0)
	{
		alert("不能预定之前的时间！");
		return;
	}
  	//alert($("#mrname").val());
  	$("#reserveform").submit();
  }
  function changemr()
  {
	//alert($("#mrname").val());
			var ajaxdata = {
           	mrname : $("#mrname").val()
           	};
  	
			$.ajax({
     			type:'post',
     			data:ajaxdata,
     			url:'timelistMR.action',
     			dataType:'text',
     			success:function(data){
     			var obj = $.parseJSON(data);
     			//var json = eval("("+data+")");
     			$.each(obj,function(commentIndex, comment) {  //遍历返回数组的每一个实体
           			alert(comment.mrname);                    //输出实体的sshortName属性的值
           			})
     			
     			//obj.resultTree 
     			
				//alert(obj.resultTree);
     			},
    			error:function(){
       			alert("修改失败");
    			}
    			
    		});
  }
  </script>
	<body>
		<form action="reserveMR.action" name="reserveform" id="reserveform">
			<table align="center">
				<tr>
					<td>
						会议室名称：
					</td>
					<td>
						<select name="mrname" id="mrname" onchange="javascript:changemr()">
							<c:forEach var="mr" items="${mrs}">
								<option value="${mr.mrname }">
									${mr.mrname }
								</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						开始时间：
					</td>
					<td>
						<input class="Wdate" name="starttime" id="starttime" type="text"
							onClick="WdatePicker({startDate:'%y-%M-01 00:00:00',dateFmt:'yyyy-MM-dd HH:mm:ss',alwaysUseStartDate:true})"
							style="width: 230px" />
					</td>
				</tr>
				<tr>
					<td>
						结束时间：
					</td>
					<td>
						<input class="Wdate" name="endtime" id="endtime" type="text"
							onClick="WdatePicker({startDate:'%y-%M-01 00:00:00',dateFmt:'yyyy-MM-dd HH:mm:ss',alwaysUseStartDate:true})"
							style="width: 230px" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="button" onclick="javascript:reserve()" value="预约">
					</td>
					<td>
						<input type="reset" value="重置">
					</td>
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
