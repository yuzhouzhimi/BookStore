<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!doctype html public "-//w3c//dtd html 4.01 transitional//en" 
"http://www.w3c.org/tr/1999/rec-html401-19991224/loose.dtd">
<html>
	<head>
		<title>���Ϲ���ϵͳ</title>
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
					<p style="font-family:����"></p><p style="font-family:����"></p>
					<p style="font-family:����"></p><p style="font-family:����"></p>
					<div class=banner>
					</div>
					<br>
					<br>
					<div class=info_bk1>
						<div align="center">
							<%--�û������¼֮�󣬽��¼�����loogin.action,ִ����ش������--%>
							<form action="login.action" method="post" name="login">
								<br>
								�û���¼
								<br>
								<br>
								�û���:
								<input type="text" name="user.username" size=20 id="username">
								<br>
								<br>
								��&nbsp;&nbsp;&nbsp;&nbsp;��:
								<input type="password" name="user.password" size=21
									id="password">
								<br>
								<br>
								<br>
								<input type="submit" value="��¼">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="foot.jsp"></jsp:include>
	</body>
</html>
