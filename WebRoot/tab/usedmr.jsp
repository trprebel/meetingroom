<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:directive.page import="com.bean.UsedMR" />
<jsp:directive.page import="com.bean.User" />
<%@taglib prefix="c" uri="/jstl/c.tld"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	List<UsedMR> usedmrs = (List<UsedMR>) request
			.getAttribute("usedmrlist");
	pageContext.setAttribute("usedmrs",usedmrs);
	User user = (User) session.getAttribute("user");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'userdmr.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>
	<script type="text/javascript" src="js/jquery-1.6.js"></script>

	<script type="text/javascript">

	function modify(i)
  	{
  		//alert(document.getElementById("mrname"+i).value);

  		var postdata = {
  			id :document.getElementById("id"+i).value,
  			mrname:document.getElementById("mrname"+i).value
    	};
  	
		$.ajax({
     		type:'post',
     		data:postdata,
     		url:'cancelreMR.action',
     		dataType:'text',
     		success:function(data){
     			var obj = $.parseJSON(data);        
				alert(obj.value);
				var tb=document.getElementById("table");
				var tr=document.getElementById("seq"+i);
				//parent.removeChild(child);
				tb.deleteRow(tr.rowIndex);
     		},
    		error:function(){
       			alert("修改失败");
    		}

    	});
  	}
  </script>
	<body>
		<div align="right">
			<select>
				<option></option>
				<c:forEach var="mr" items="${mrlist}">
					<c:if test="${mr.state==1 }">
						<option value="${mr.mrname }">
							${mr.mrname }
						</option>
					</c:if>
				</c:forEach>
			</select>
			<select>
				<option></option>
				<c:forEach var="user" items="${usernames}">
					<option value="${user.mrname }">
						${user.mrname }
					</option>
				</c:forEach>
			</select>
		</div>
		<table id="table" align="center">
		<caption>会议室预定表</caption>
			<tr>
				<td>
				</td>
				<td>
					预订人
				</td>
				<td>
					会议室名称
				</td>
				<td>
					楼层
				</td>
				<td>
					位置
				</td>
				<td>
					所属部门
				</td>
				<td>
					开始时间
				</td>
				<td>
					结束时间
				</td>
				<td>
					操作
				</td>
			</tr>
			<%
				int i = 0;
				for (UsedMR usedmr : usedmrs) {
			%>

			<tr id="<%="seq"+i %>">
				<td>
					<input type="hidden" name="id" id="<%="id" + i%>" border="0"
						readonly value="<%=usedmr.getId()%>">
				</td>
				<td>
					<input type="text" name="username" id="<%="username" + i%>"
						border="0" style="width: 100px" readonly
						value="<%=usedmr.getUsername()%>">
				</td>
				<td>
					<input type="text" name="mrname" id=<%="mrname" + i%>
						style="width: 150px" readonly value="<%=usedmr.getMrname()%>">
				</td>
				<td>
					<input type="text" name="floor" id=<%="floor" + i%>
						style="width: 50px" readonly value="<%=usedmr.getFloor()%>">
				</td>
				<td>
					<input type="text" name="station" id=<%="station" + i%>
						style="width: 200px" readonly value="<%=usedmr.getStation()%>">
				</td>
				<td>
					<input type="text" name="department" id=<%="department" + i%>
						style="width: 130px" readonly value="<%=usedmr.getDepartment()%>">
				</td>
				<td>
					<input type="text" name="starttime" id=<%="starttime" + i%>
						style="width: 160px" readonly value="<%=usedmr.getStarttime()%>">
				</td>
				<td>
					<input type="text" name="endtime" id="<%="endtime" + i%>"
						style="width: 160px" readonly readonly
						value="<%=usedmr.getEndtime()%>">
				</td>
				<%
					if ((user.getUsername().equals(usedmr.getUsername()))||(user.getType()==1)) {
							out.print("<td><a href='javascript:modify(" + i
									+ ")'>取消</a></td>");
						}
				%>

			</tr>

			<%
				i++;
				}
			%>

		</table>
	</body>
</html>
