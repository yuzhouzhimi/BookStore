<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
    <title>���Ϲ���ϵͳ</title>
    <link href="css/bookstore.css" rel="stylesheet" type="text/css">
</head>
<%--������Ϣչʾ--%>
<body>
<jsp:include page="head.jsp"></jsp:include>
<div class=content>
    <div class=left>
        <div class=list_box>
            <br>
            <br>
            <br>
            <div class=list_bk>
                <li><p style="font-size:6px"><a href="managerlogin_success.jsp"> �鼮��Ϣ����</a></p></li>
                <li><p style="font-size:6px"><a href="user_manage.jsp">�û���Ϣ����</a></p></li>
                <li><p style="font-size: 6px"><a href="order_manager.jsp">������Ϣ����</a> </p> </li>
                <li><p style="font-size:6px"><a href="manager.jsp">����Ա����</a></p></li>
            </div>
        </div>
    </div>
    <div class=right>
        <div class=right_box>
            <p style="font-family:����"></p><p style="font-family:����"></p>
            <p style="font-family:����"></p><p style="font-family:����"></p>
            <div class=banner>
                <div align="center">
                    <br>
                    <br>
                    ������Ϣ��
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