<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!doctype html public "-//w3c//dtd html 4.01 transitional//en" 
"http://www.w3c.org/tr/1999/rec-html401-19991224/loose.dtd">
<html>
	<head>
		<title>���Ϲ���ϵͳ</title>
		<link href="css/bookstore.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<jsp:include page="head.jsp"></jsp:include>
		<div class=content>
			<div class=left>
				<div class=list_box>
					<div class=list_bk>
						<s:action name="browseCatalog" executeResult="true"></s:action>
					</div>
				</div>
			</div>
			<div class=right>
				<br>
				<br>
				<div class=right_box>
					<font face=����>ͼ����ӳɹ�!</font>
					<form action="browseBookPaging.action" method="post">
						<input type="hidden"
							value="<s:property value="#session['catalogid']"/>">
						<%--���繺�ﳵ֮��Ҳ�ɷ���ȥ��������--%>
						<input type="image" name="submit"
							src="picture/continue.gif" />
					</form>
				</div>
			</div>
		</div>
		<jsp:include page="foot.jsp"></jsp:include>
	</body>
</html>
