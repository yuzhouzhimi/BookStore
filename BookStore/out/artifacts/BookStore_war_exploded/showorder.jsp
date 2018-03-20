<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>


<%--显示所有订单--%>
    <table border="1" cellspacing="1" cellpadding="8" width="700">
        <tr align="center" bgcolor="silver" >
            <th>订单ID号</th><th>订单日期</th><th>详细信息</th><th>操作</th><th>操作</th>
        </tr>
        <s:iterator value="#request['orders']" var="orders">
            <tr>
                <td><s:property value="#orders.orderid"/></td>
                <td><s:property value="#orders.orderdate"/> </td>
                <td><a href="#"><s:property value="详细信息"/>详细信息 </a></td>
                <%--<td><button type="submit" value="<s:property value="userid"/>" name="bookId">删除</button></td>--%>
                <td><a href="#">删除</a> </td>
                <td><a href="#">确认</a></td>
            </tr>
        </s:iterator>
    </table>

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
