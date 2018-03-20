<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
  <title>网上书店</title>
  <link href="css/bookstore.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<div class=content>
  <div class=left>
    <div class=list_box>
      <div class=list_bk>
        <%--左边通过browseCatalog在struts中进行配置，与相关action联系，从而执行action--%>
        <s:action name="browseCatalog" executeResult="true" />
      </div>
    </div>
  </div>
  <div class=right>
    <div class=right_box>

      <p style="font-family:宋体"></p><p style="font-family:宋体"></p>
      <p style="font-family:宋体"></p><p style="font-family:宋体"></p>
      <div class=banner>
      <div align="center">
        <%--右边通过newBook在struts中进行配置，与相关action联系，从而执行action--%>
        <s:action name="newBook" executeResult="true" />
      </div>
      </div>
    </div>
  </div>
</div>

<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>

