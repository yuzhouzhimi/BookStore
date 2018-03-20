<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
    <title>网上购书系统</title>
    <link href="css/bookstore.css" rel="stylesheet" type="text/css">
</head>
<%--订单信息展示--%>
<body>
<jsp:include page="head.jsp"></jsp:include>
<div class=content>
    <div class=left>
        <div class=list_box>
            <br>
            <br>
            <br>
            <div class=list_bk>
                <li><p style="font-size:6px"><a href="managerlogin_success.jsp"> 书籍信息管理</a></p></li>
                <li><p style="font-size:6px"><a href="user_manage.jsp">用户信息管理</a></p></li>
                <li><p style="font-size: 6px"><a href="order_manager.jsp">订单信息管理</a> </p> </li>
                <li><p style="font-size:6px"><a href="manager.jsp">管理员管理</a></p></li>
            </div>
        </div>
    </div>
    <div class=right>
        <div class=right_box>
            <p style="font-family:宋体"></p><p style="font-family:宋体"></p>
            <p style="font-family:宋体"></p><p style="font-family:宋体"></p>
            <div class=banner>
                <div align="center">
                    <br>
                    <br>
                    订单信息表
                    <br>
                    <br>
                    <s:action name="showorder" executeResult="true" />
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>