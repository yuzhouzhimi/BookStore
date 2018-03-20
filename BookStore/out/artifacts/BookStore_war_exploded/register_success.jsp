<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
	<head>
		<title>网上购书系统</title>
	</head>
	<%--注册成功，用户就可以选择登录--%>
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
					<br>
					<div class=info_bk1>
						<div align="center">
							您好! 用户
							<s:property value="user.username" />
							欢迎您注册成功!
							<a href="login.jsp">登录</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="foot.jsp"></jsp:include>
	</body>
</html>
