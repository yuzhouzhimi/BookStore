<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
    <title>�������</title>
    <script type="text/javascript" src="dwr/engine.js"></script>
    <script type="text/javascript" src="dwr/util.js"></script>
    <script type="text/javascript" src="dwr/interface/UserDAOAjax.js"></script>
    <script type="text/javascript">
    </script>

</head>
<body>
<!--����head.jsp-->
<jsp:include page="head.jsp"></jsp:include>
<div class=content>
    <div class=left>
        <div class=list_box>
            <div class=list_bk>
                <!--ִ��browseCatalog��Action�����ѽ����ʾ�ڸ�λ�ã���action�Ĺ�������ʵ���е�ͼ�������-->
                <s:action name="browseCatalog" executeResult="true" />
            </div>
        </div>
    </div>
    <div class=right>

        <div class=right_box>
            <br>
            <br>
            <br>
            <div class=info_bk1>
                <div align="center">
                    <form action="addbook.action" method="post">
                        ���ͼ��
                        <%--<br>--%>
                        <%--<br>--%>
                        <%--����:<input type="text" id="id" name="book.bookid" />--%>
                        <br>
                        <br>
                        ����:<input type="text" id="name" name="book.bookname" />
                        <br>
                        <br>
                        ��&nbsp;&nbsp;&nbsp;&nbsp;��:
                        <input type="text" name="book.price" >
                        <br>
                        <br>
                        ͼƬ&nbsp;&nbsp;&nbsp;&nbsp;��ַ:
                        <input type="text" name="book.picture"  />
                        <br>
                        <br>
                        ��&nbsp;&nbsp;&nbsp;&nbsp;��:
                        <input type="text" name="book.catalogid"  />
                        <br>
                        <br>
                        ��&nbsp;&nbsp;&nbsp;&nbsp;��:
                        <input type="text" name="book.quantity"  />
                        <br>
                        <br>
                        <br>
                        <input type="submit" value="���">
                    </Form>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>
