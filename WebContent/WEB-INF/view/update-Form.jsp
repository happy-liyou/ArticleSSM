<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form action="updateuser.do" method="post">
  	<table border="1">
  		<tr>
  			<td>学号</td>
  			<td><input type="text" name="user_Id" value="${user.user_Id}"></td>
  		</tr>
  		<tr>
  			<td>用户名</td>
  			<td><input type="text" name="user_Name" value="${user.user_Name}"></td>
  		</tr>
  		<tr>
  			<td>密码</td>
  			<td><input type="password" name="user_Password" value="${user.user_Password}"></td>
  		</tr>
  		<tr>
  			<td>等级</td>
  			<td><input type="text" name="user_Grade" value="${user.user_Grade}"></td>
  		</tr>
  		<tr>
  			<td>图片路径</td>
  			<td><input type="file" name="user_Heard" value="${user.user_Heard}"></td>
  		</tr>
  		<tr>
  			<td>性别</td>
  			<td><input type="radio" name="user_SEX" value="${user.user_Sex}"></td>
  		</tr>
  		<tr>
  			<td>类型</td>
  			<td><input type="text" name="user_Type" value="${user.user_Type}"></td>
  		</tr>
  		<tr>
  			<td>手机号</td>
  			<td><input type="text" name="user_Phone" value="${user.user_Phone}"></td>
  		</tr>
  		<tr>
  			<td>Email</td>
  			<td><input type="text" name="user_Email" value="${user.user_Email}"></td>
  		</tr>
  		
  	</table>
  	
  </form>

</body>
</html>