<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
	<head>
		<title>���Ϲ���ϵͳ</title>
	</head>
	<%--ע��ɹ����û��Ϳ���ѡ���¼--%>
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
					<br>
					<div class=info_bk1>
						<div align="center">
							����! �û�
							<s:property value="user.username" />
							��ӭ��ע��ɹ�!
							<a href="login.jsp">��¼</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="foot.jsp"></jsp:include>
	</body>
</html>
