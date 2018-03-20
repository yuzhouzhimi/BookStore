<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
    <title>网上书店</title>
    <script type="text/javascript" src="dwr/engine.js"></script>
    <script type="text/javascript" src="dwr/util.js"></script>
    <script type="text/javascript" src="dwr/interface/UserDAOAjax.js"></script>
    <script type="text/javascript">
    </script>

</head>
<body>
<!--导入head.jsp-->
<jsp:include page="head.jsp"></jsp:include>
<div class=content>
    <div class=left>
        <div class=list_box>
            <div class=list_bk>
                <!--执行browseCatalog的Action，并把结果显示在该位置，该action的功能是现实所有的图书的类型-->
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
                        添加图书
                        <%--<br>--%>
                        <%--<br>--%>
                        <%--书名:<input type="text" id="id" name="book.bookid" />--%>
                        <br>
                        <br>
                        书名:<input type="text" id="name" name="book.bookname" />
                        <br>
                        <br>
                        价&nbsp;&nbsp;&nbsp;&nbsp;格:
                        <input type="text" name="book.price" >
                        <br>
                        <br>
                        图片&nbsp;&nbsp;&nbsp;&nbsp;地址:
                        <input type="text" name="book.picture"  />
                        <br>
                        <br>
                        类&nbsp;&nbsp;&nbsp;&nbsp;别:
                        <input type="text" name="book.catalogid"  />
                        <br>
                        <br>
                        数&nbsp;&nbsp;&nbsp;&nbsp;量:
                        <input type="text" name="book.quantity"  />
                        <br>
                        <br>
                        <br>
                        <input type="submit" value="添加">
                    </Form>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>
