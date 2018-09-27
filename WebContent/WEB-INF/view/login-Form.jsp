<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆界面</title>
<style type="text/css">
.mainnav-box {
	background-color: #CCCCCC;
}

li {
	float: left;
	width: 13%;
	list-style: none;
}

a {
	font-size: 16px;
	color: red;
	text-decoration: none
}

input {
	height: 30px;
}
</style>
<script type="text/javascript" src="jQuery/jquery-1.11.1.js"></script>
<script src="jQuery/bootstrap_3.3.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="jQuery/bootstrap_3.3.0/css/bootstrap-theme.min.css"></link>
<link rel="stylesheet"
	href="jQuery/bootstrap_3.3.0/css/bootstrap.min.css" type="text/css"></link>
<!-- 自动登陆 -->
<!--  
<script type="text/javascript">
	//选中记住密码触发事件，如果选中就赋值为1 ，否则赋值为0
	function remember() {
		var remFlag = $("input:checkbox").is(':checked');
		if (remFlag) {
			//cookie存用户名和密码,回显的是真实的用户名和密码,存在安全问题.
			var conFlag = confirm("记录密码功能不宜在公共场所使用,以防密码泄露.您确定要使用此功能吗?");
			if (conFlag) {
				//确认标志
				$("#rememberMe").val("1");
			} else {
				$("input:checkbox").removeAttr('checked');
				$("#rememberMe").val("0");
			}
		} else {
			//如果没选中设置remFlag为""
			$("#rememberMe").val("0");
		}
	}

	//启动函数来获取cookie中保存的用户信息
	$(function() {

		//　cookie数据保存格式是key=value;key=value;形式，loginInfo为保存在cookie中的key值，具体看controller代码
		var str = getCookie("loginInfo");
		str = str.substring(1, str.length - 1);
		var user_Name = str.split(",")[0];
		var user_Password = str.split(",")[1];
		//自动填充用户名和密码
		$("#user_Name").val(user_Name);
		$("#user_Password").val(user_Password);
	});
	//获取cookie
	function getCookie(cname) {
		var name = cname + "=";
		var ca = document.cookie.split(';');
		for (var i = 0; i < ca.length; i++) {
			var c = ca[i];
			while (c.charAt(0) == ' ')
				c = c.substring(1);
			if (c.indexOf(name) != -1)
				return c.substring(name.length, c.length);
		}
		return "";
	}
</script>
-->
<!-- 图片验证码 -->
<script type="text/javascript">
	function genTimestamp() {
		var time = new Date();
		return time.getTime();
	}
	function changeImage() {
		$('#verifyCodeImage').attr('src',
				'getVerifyCode.do?timestamp=' + genTimestamp());
	}
	//登录，检测验证码、用户名、密码
	function login() {
		var user_input_verifyCode = $("#user_input_verifyCode").val();
		var user_Name = $("[name=user_Name]").val();
		var user_Password = $("[name=user_Password]").val();
		if (user_Name == '' || user_Password == '') {
			$.messager.alert('错误', "用户名或者密码为空！");
			return;

		}
		$.ajax({
			type : 'post',
			url : "login.do",
			data : {
				verifyCode : user_input_verifyCode,
				user_Name : user_Name,
				user_Password : user_Password
			},

			dataType : "text",
			success : function(data) {
				if(data!=null&&data=="index")
				window.location.href("list-Form");
				}else if(data!=null&&data=="login"){
					
				}
			error:function(data){
				$.messager.alert('错误', "用户名或者密码为空！");
			}
			
		});
	}
</script>
</head>
<body>
	<div class="top">
		<table style="width: 1200px; height: 60px; margin: auto">
			<tr>
				<td width="150"><img src="img/swzl.png"></td>
				<td width="200"><strong>全国> </strong><a href=""
					style="color: #F00; font-weight: bold; font-size: 14px">切换城市</a></td>
				<td width="150"></td>
				<td width="600" align="right">
					<div class="row">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Search for..."> <span
								class="input-group-btn">
								<button class="btn btn-default" type="button">搜索</button>
							</span>
						</div>
					</div>
					<div style="width: 100%; text-align: center; padding-left: 10px;">热搜词：手机、钱包、钥匙、身份证、ipad、杯子</div>
				</td>

			</tr>

		</table>
	</div>
	<div class="nav" style="width: 100%; height: 500px">
		<div class="mainnav-box">
			<ul style="width: 1200px; height: 30px; margin: auto">
				<li><a href="">首页</a></li>
				<li><a href="">失物招领</a></li>
				<li><a href="">寻物启事</a></li>
				<li><a href="">寻人启事</a></li>
				<li><a href="">寻宠启事</a></li>
				<li><a href="">关于我们</a></li>
				<li><a href="">感谢信</a></li>
			</ul>
		</div>
		<div id="body" style="width: 1200px; height: 400px; margin: auto">
			<div class="body-img" style="width: 640px; height: 360px">
				<img src="img/loginbg.jpg">

			</div>
			<div class="body-login"
				style="position: relative; left: 640px; top: -360px; height: 360px">
				<form action="loginForm.do" method="post">
					<table>
						<tr>
							<p style="margin-top: 10px; margin-left: 100px">
								您还没有登陆，请登录或者<a>点此免费注册</a>
							</p>
						</tr>
						<tr>
							<td width="20%" height="50" align="right">用户名</td>
							<td><input type="text" name="user_Name" size="35"
								placeholder="请输入你的用户名"></td>
						</tr>
						<tr>
							<td width="30%" height="50" align="right">密&nbsp;码</td>
							<td><input type="password" name="user_Password" size="35"
								placeholder="请输入登陆密码"></td>
						</tr>

						<tr>
							<td></td>
							<td><input type="text" id="user_input_verifyCode"
								name="user_input_verifyCode" placeholder="验证码" maxlength="4"
								size="25"> <span class="code_img"> <img
									src="getVerifyCode.do" width="110" height="40"
									id="verifyCodeImage">
							</span></td>
							<td><span> <a id="changeVerifImageRegister"
									onclick="javascript:changeImage();">换一张</a>
							</span></td>
						</tr>
						<tr>
							<td width="30%" height="50" align="right"></td>
							<td><input type="checkbox" name="auto" value="true"">自动登陆
							</td>

						</tr>
						<tr>
							<td>
							<td><input id="submit" type="button" value="登录"
								onclick="login()"></td>
						</tr>


					</table>

				</form>
			</div>



		</div>

	</div>
</body>

</html>