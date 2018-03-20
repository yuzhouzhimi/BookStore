<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%--书籍信息展示--%>
<form action="deletebook.action">
<table border="1" cellspacing="1" cellpadding="8" width="700">
    <tr align="center" bgcolor="silver" >
        <th>ID号</th><th>书名</th><th>价格</th><th>类别</th><th>数量</th><th>操作</th><th>操作</th>
    </tr>
    <s:iterator value="#request['list']" var="book">
        <tr>
            <td><s:property value="#book.bookid"/></td>
            <td><s:property value="#book.bookname"/> </td>
           <td><input type="text" name="quantity" value="<s:property value="#book.price"/>" size="4"
                      onblur="check(this);" /></td>

            <td><s:property value="#book.catalog.catalogid"/></td>
            <td><input type="text" name="quantity" value="<s:property value="#book.quantity"/>" size="4"
                       onblur="check(this);" /></td>

            <td> <a href="#?book.bookid=<s:property value="#bookid"/>" onClick="if(!confirm('不能删除'))return false;else return true;">删除</a> </td>
            <td> <a href="#?book.bookid=<s:property value="#bookname"/>" onClick="if(!confirm('确定修改该信息吗？'))return false;else return true;">修改</a> </td>
        </tr>
    </s:iterator>
</table>
</form>
<s:set var="page" value="#request['page']" />
<s:if test="#page.hasFirst">
    <a href="showbook.action?pageNow=1">首页</a>
</s:if>
<s:if test="#page.hasPrevious">
    <a
            href="showbook.action?pageNow=<s:property value="#page.pageNow-1"/>">上一页</a>
</s:if>
<s:if test="#page.hasNext">
    <a
            href="showbook.action?pageNow=<s:property value="#page.pageNow+1"/>">下一页</a>
</s:if>
<s:if test="#page.hasLast">
    <a
            href="showbook.action?pageNow=<s:property value="#page.totalPage"/>">尾页</a>
</s:if>
当前第<s:property value="#page.pageNow" />页
