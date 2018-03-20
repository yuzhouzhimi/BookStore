<%@ page contentType="text/html;charset=gb2312" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<script language=javascript>
<!-- 用JavaScript实现验证输入必须为数字-->
<!--
	function check(thisObject){
		var sTmp="";
		sTmp=thisObject.value;
		if(isNaN(sTmp)){
			alert("请输入数字");
			thisObject.select();//如果不是数字，该输入框被选中
		}
}
//-->
</script>
<link href="css/bookstore.css" rel="stylesheet" type="text/css">
<h1><p style="text-align: center"><span class="green14b">新书展示</span></p></h1>
<hr>
<br>
<%--新书展示--%>
<s:iterator value="#request['books']" var="book">
   <div class=xh5>
      <img  height=105 width=80 src="/<s:property value="#book.picture"/>"/><BR>
      <s:property value="#book.bookname"/>
       <br>价格:<s:property value="#book.price"/>元<br>
       <form action="addToCart.action" method="post">
           <p style="line-height:8px">数量:<input type="text" name="quantity" id="quantity" value="<s:property value="#book.quantity"/>" size="4" onblur="check(this);"/></p>
          <input type="hidden" value="<s:property value="#book.bookid"/>" name="bookid">
          <input type="image" name="submit" src="picture/buy.gif"/>
       </form>
       <br><br>
    </div>
    </s:iterator>

