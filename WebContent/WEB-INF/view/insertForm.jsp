<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新用户注册</title>
<script type="text/javascript" src="jQuery/jquery-1.11.1.js"></script>
<script src="jQuery/bootstrap_3.3.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="jQuery/bootstrap_3.3.0/css/bootstrap-theme.min.css"></link>
<link rel="stylesheet"
	href="jQuery/bootstrap_3.3.0/css/bootstrap.min.css" type="text/css"></link>

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
    </style>
</head>
<body>
<div class="top">
    <table style="width: 1200px;height: 60px;margin: auto">
        <tr>
            <td width="150"><img src="img/swzl.png"></td>
            <td width="200"><strong>全国> </strong><a href=""
                                                    style="color: #F00; font-weight:bold;font-size: 14px ">切换城市</a></td>
            <td width="150"></td>
            <td width="600" align="right">
                <div class="row">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for...">
                        <span class="input-group-btn">
                        <button class="btn btn-default" type="button">搜索</button>
                        </span>
                    </div>
                </div>
                <div style="width:100%; text-align: center; padding-left:10px;">热搜词：手机、钱包、钥匙、身份证、ipad、杯子</div>
            </td>

        </tr>

    </table>
 </div>
 <div class="nav" style="width: 100%;height: 500px">
    <div class="mainnav-box">
        <ul style="width: 1200px;height: 30px;margin: auto">
            <li><a href="">首页</a></li>
            <li><a href="">失物招领</a></li>
            <li><a href="">寻物启事</a></li>
            <li><a href="">寻人启事</a></li>
            <li><a href="">寻宠启事</a></li>
            <li><a href="">关于我们</a></li>
            <li><a href="">感谢信</a></li>
        </ul>
    </div>
  
   <div class="top-body">
        <div class="top-body-content" style="width: 80%;margin: auto " >
        
        <p style="margin-left:150px;font-size: 25px;"><strong>用户注册</strong></p>
        <form action="insertUser.do" method="post">
            <table style="width: 80%;margin: auto;">
                <tr>
                    <td width="30%" height="40" align="right">学&nbsp;&nbsp;号</td>
                    <td><input type="text" name="user_Id" size="40" style="height: 30px;" placeholder="请输入学号"></td>
                </tr>

                <tr>
                    <td width="30%" height="40" align="right">用户名</td>
                    <td><input type="text" name="user_Name" size="40" style="height: 30px;" placeholder="请设置用户名"></td>
                </tr>
                <tr>
                    <td width="30%" height="40" align="right">密&nbsp;&nbsp;码</td>
                    <td><input type="password" name="user_Password" size="40" style="height: 30px;" placeholder="请设置登录密码"></td>
                </tr>
                <tr>
                    <td width="30%" height="40" align="right">性&nbsp;&nbsp;别</td>
                    <td>
                        <input type="radio" name="user_Sex" checked="checked">男
                        <input type="radio" name="user_Sex">女
                    </td>


                </tr>
                <tr>
                    <td width="30%" height="40" align="right">手机号</td>
                    <td><input type="text" name="user_Phone" size="40" style="height: 30px;" placeholder="请输入手机号"></td>
                </tr>
                <tr>
                    <td width="30%" height="40" align="right">邮&nbsp;&nbsp;箱</td>
                    <td><input type="text" name="user_Email" size="40" style="height: 30px;" placeholder="请输入邮箱"></td>
                </tr>
                <tr>
                    <td width="30%" height="40"></td>
                    <td><input type="submit" value="注册"></td>
                </tr>

            </table>
        </form>
        </div>
    </div>
</div>

</body>
</html>