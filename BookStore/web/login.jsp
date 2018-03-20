<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!doctype html public "-//w3c//dtd html 4.01 transitional//en" 
"http://www.w3c.org/tr/1999/rec-html401-19991224/loose.dtd">
<html>
	<head>
		<title>网上购书系统</title>
	</head>
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
							<%--用户点击登录之后，将事件交给loogin.action,执行相关存入操作--%>
							<form action="login.action" method="post" name="login">
								<br>
								用户登录
								<br>
								<br>
								用户名:
								<input type="text" name="user.username" size=20 id="username">
								<br>
								<br>
								密&nbsp;&nbsp;&nbsp;&nbsp;码:
								<input type="password" name="user.password" size=21
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
