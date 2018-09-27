<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>失物招领</title>
<script type="application/javascript" src="jQuery/jquery-1.11.1.js"></script>
<link type="text/css" rel="stylesheet"
	href="jQuery/bootstrap_3.3.0/css/bootstrap.min.css">
<script type="application/javascript"
	src="jQuery/bootstrap_3.3.0/js/bootstrap.min.js"></script>
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

button {
	margin-right: 150px;
}
</style>
<script type="application/javascript">
        $("#myCarousel").carousel({
            interval: 1000
        })
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
				
				<c:if test="${user==null }">
					<td><a href="getInsertForm.do">注册</a></td>
					<td><a href="showLoginView.do">登陆</a></td>
				</c:if>
				<c:if test="${user!=null }">
					<td><span>欢迎你:${user.user_Name}</span></td>
				</c:if>
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
		<div class="bodynav-box"
			style="width: 1200px; height: 70px; margin: auto">
			<div class="btn-group">
				<a 
					class="btn btn-default glyphicon glyphicon-pencil" role="button">发布寻物</a>
				<a type="button"
					class="btn btn-default glyphicon glyphicon-envelope">发布招领</a>
				<a type="button"
					class="btn btn-default glyphicon glyphicon-user">发布寻人</a>
				<a type="button"
					class="btn btn-default glyphicon glyphicon-eye-open">发布寻宠</a>
			</div>
		</div>
		<div id="myCarousel" class="carousel slide"
			style="width: 1200px; margin: auto">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>


			</ol>
			<div class="carousel-inner">
				<div class="item active" style="background: #223240;">
					<img src="img/1.jpg" alt="第一张" />
				</div>
				<div class="item" style="background: #F5E4DC;">
					<img src="img/2.jpg" alt="第二张" />
				</div>
				<div class="item" style="background: #DE2A2D;">
					<img src="img/3.jpg" alt="第三张" />
				</div>
				<div class="item" style="background: greenyellow;">
					<img src="img/4.jpg" alt="第四张" />
				</div>
				<div class="item" style="background: burlywood;">
					<img src="img/5.jpg" alt="第五张" />
				</div>

			</div>

			<a href="#myCarousel" data-slide="prev" class="carousel-control left">
				<span class="glyphicon glyphicon-chevron-left"> </span>
			</a> <a href="#myCarousel" data-slide="next"
				class="carousel-control right"> <span
				class="glyphicon glyphicon-chevron-right"> </span>
			</a>
		</div>


	</div>
</html>