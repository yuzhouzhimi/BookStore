<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%--管理员信息展示--%>
<table border="1" cellspacing="1" cellpadding="8" width="700">
    <tr align="center" bgcolor="silver" >
        <th>ID号</th><th>姓名</th><th>性别</th><th>操作</th><th>操作</th>
    </tr>
    <s:iterator value="#request['manager']" var="manager">
        <tr>
            <td><s:property value="#manager.managerid"/></td>
            <td><s:property value="#manager.managername"/> </td>
            <td><s:property value="#manager.sex"/> </td>
            <td> <a href="deletebook.action?manager.managername=<s:property value="#manager.managername"/>" onClick="if(!confirm('确定删除该信息吗？'))return false;else return true;">删除</a> </td>
            <td> <a href="#?book.bookid=<s:property value="#bookname"/>" onClick="if(!confirm('确定修改该信息吗？'))return false;else return true;">修改</a> </td>
        </tr>
    </s:iterator>
</table>
