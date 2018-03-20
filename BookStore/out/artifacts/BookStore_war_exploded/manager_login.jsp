<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!doctype html public "-//w3c//dtd html 4.01 transitional//en"
"http://www.w3c.org/tr/1999/rec-html401-19991224/loose.dtd">
<html>
<head>
    <title>网上购书系统</title>
</head>
<%--管理员登录--%>
<body>
<jsp:include page="head.jsp"></jsp:include>
<div class=content>
    <div class=left>
        <div class=list_box>
            <div class=list_bk>
                <s:action name="browseCatalog" executeResult="true" />
            </div>
        </div>
    </div>
    <div class=right>
        <div class=right_box>
            <p style="font-family:宋体"></p><p style="font-family:宋体"></p>
            <p style="font-family:宋体"></p><p style="font-family:宋体"></p>
            <div class=banner>
            </div>
            <br>
            <br>
            <div class=info_bk1>
                <div align="center">
                    <form action="managerlogin.action" method="post" name="managerlogin">
                        <br>
                        <p style="text-size:10px">管理员登录</p>
                        <br>
                        <br>
                        用户名:
                        <input type="text" name="manager.managername" size=20 id="managername">
                        <br>
                        <br>
                        密&nbsp;&nbsp;&nbsp;&nbsp;码:
                        <input type="password" name="manager.password" size=21
                               id="password">
                        <br>
                        <br>
                        <br>
                        <input type="submit" value="登录">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>
