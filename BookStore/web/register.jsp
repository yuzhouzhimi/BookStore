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
    function show(boolean)
    {
     	 if(boolean)
     	 {
       	 alert("�û��Ѿ�����!");
     	 }
	}
    function validate(){
      var name=document.all.name.value;
      if(name == ""){
      	alert("�û�������Ϊ�գ�");
      	return;
      }
      UserDAOAjax.exitUser(name,show);

    }
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
						<form action="register.action" method="post" name="form1">
							�û�ע��
							<br>
							<br>
							�û���:<input type="text" id="name" name="user.username"  onblur="validate()" />
							<br>
							<br>
							��&nbsp;&nbsp;&nbsp;&nbsp;��:
							<input type="password" name="user.password" >
							<br>
							<br>
							��&nbsp;&nbsp;&nbsp;&nbsp;��:
							<input type="text" name="user.sex"  />
							<br>
							<br>
							��&nbsp;&nbsp;&nbsp;&nbsp;��:
							<input type="text" name="user.age"  />
							<br>
							<br>
							�绰&nbsp;&nbsp;&nbsp;&nbsp;����:
							<input type="text" name="user.phone"  />
							<br>
							<br>
							��&nbsp;&nbsp;&nbsp;&nbsp;ַ:
							<input type="text" name="user.address"  />
							<br>
							<br>
							<br>
							<input type="submit" value="ע��">
						</Form>
					</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="foot.jsp"></jsp:include>
	</body>
</html>
