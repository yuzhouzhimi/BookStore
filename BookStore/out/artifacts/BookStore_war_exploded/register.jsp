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
    function show(boolean)
    {
     	 if(boolean)
     	 {
       	 alert("用户已经存在!");
     	 }
	}
    function validate(){
      var name=document.all.name.value;
      if(name == ""){
      	alert("用户名不能为空！");
      	return;
      }
      UserDAOAjax.exitUser(name,show);

    }
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
						<form action="register.action" method="post" name="form1">
							用户注册
							<br>
							<br>
							用户名:<input type="text" id="name" name="user.username"  onblur="validate()" />
							<br>
							<br>
							密&nbsp;&nbsp;&nbsp;&nbsp;码:
							<input type="password" name="user.password" >
							<br>
							<br>
							性&nbsp;&nbsp;&nbsp;&nbsp;别:
							<input type="text" name="user.sex"  />
							<br>
							<br>
							年&nbsp;&nbsp;&nbsp;&nbsp;龄:
							<input type="text" name="user.age"  />
							<br>
							<br>
							电话&nbsp;&nbsp;&nbsp;&nbsp;号码:
							<input type="text" name="user.phone"  />
							<br>
							<br>
							地&nbsp;&nbsp;&nbsp;&nbsp;址:
							<input type="text" name="user.address"  />
							<br>
							<br>
							<br>
							<input type="submit" value="注册">
						</Form>
					</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="foot.jsp"></jsp:include>
	</body>
</html>
