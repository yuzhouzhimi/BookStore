<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%--用户详细信息展示--%>
<form action="deletebook.action">
<table border="1" cellspacing="1" cellpadding="8" width="700">
    <tr align="center" bgcolor="silver" >
        <th>ID号</th><th>姓名</th><th>性别<th>电话</th><th>操作</th><th>操作</th>
    </tr>
    <s:iterator value="#request['user']" var="user">
        <tr>
            <td><s:property value="#user.userid"/></td>
            <td><s:property value="#user.username"/> </td>
            <td><s:property value="#user.sex"/> </td>
            <td><s:property value="#user.phone"/> </td>
            <td><button type="submit" value="<s:property value="userid"/>" name="bookId">删除</button></td>
            <td> <a href="#?book.bookid=<s:property value="#bookname"/>" >详细信息</a> </td>
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
