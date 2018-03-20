<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
	<head>
		<title>�������</title>
		<link href="css/bookstore.css" rel="stylesheet" type="text/css">
		<script language="javascript">
	<!--
		function check(thisObject){
			var sTmp="";
			sTmp = thisObject.value;
			if ( isNaN(sTmp )){
				alert("����������");
				thisObject.select();
			}
	}
	//-->
</script>
	</head>
	<%--ͼ�����ʾ--%>
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
				<br>
				<br>
				<div class=right_box>
					<s:iterator value="#request['books']" var="book">
						<br>
						<br>
						<table width=600 border=0>
							<tr>
								<td width=200 align="center">
									<img
										src="/<s:property value="#book.picture"/>"
										width="100">
								</td>
								<td valign="top" width=400>
									<table>
										<br><br><br>
										<tr>
											<td>
												����:
												<s:property value="#book.bookname" />
												<br>
											</td>
										</tr>
										<tr>
											<td>
												�۸�:
												<s:property value="#book.price" />
												Ԫ
												<form action="addToCart.action" method="post">
													����:
													<input type="text" name="quantity" value="<s:property value="#book.quantity"/>" size="4"
														onblur="check(this);" />
													<input type="hidden"value="<s:property value="#book.bookid"/>"
														name="bookid">
													<input type="image" name="submit"
														src="/picture/buy.gif" />
												</form>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</s:iterator>
					<s:set var="pager" value="#request.pager" />
					<s:if test="#pager.hasFirst">
						<a href="browseBookPaging.action?currentPage=1">��ҳ</a>
					</s:if>
					<s:if test="#pager.hasPrevious">
						<a
							href="browseBookPaging.action?currentPage=
								<s:property  value="#pager.currentPage-1"/>">��һҳ</a>
					</s:if>
					<s:if test="#pager.hasNext">
						<a
							href="browseBookPaging.action?currentPage=
							<s:property  value="#pager.currentPage+1"/>">��һҳ</a>
					</s:if>
					<s:if test="#pager.hasLast">
						<a
							href="browseBookPaging.action?currentPage=
							<s:property  value="#pager.totalPage"/>">βҳ</a>
					</s:if>
					<br>
					��ǰ��
					<s:property value="#pager.currentPage" />
					ҳ, �ܹ�
					<s:property value="#pager.totalPage" />
					ҳ
				</div>
			</div>
		</div>
		<jsp:include page="foot.jsp"></jsp:include>
	</body>
</html>
