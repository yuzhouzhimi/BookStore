<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
	<head>
		<title>���Ϲ���ϵͳ</title>
		<link href="css/bookstore.css" rel="stylesheet" type="text/css">
	</head>
	<%--�ұ�ͼ�����չʾĿ¼--%>
	<body>
		<ul class=point02>
			<li>
				<strong>ͼ�����</strong>
			</li>
			<s:iterator value="#request['catalogs']" var="catalog">
				<li>
					<a
						href="browseBookPaging.action?catalogid=
							<s:property value="#catalog.catalogid"/>"target=_self> 
							<s:property value="#catalog.catalogname" />
					</a>
				</li>
			</s:iterator>
		</ul>
	</body>
</html>
