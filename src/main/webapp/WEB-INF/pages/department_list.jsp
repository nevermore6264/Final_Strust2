<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
         <%--pageEncoding="UTF-8" %>--%>
<%--<%@ taglib prefix="s" uri="/struts-tags" %>--%>

<%--<!DOCTYPE html>--%>
<%--<html>--%>

<%--<s:include value="fragments/head.jsp"/>--%>

<%--<body>--%>

<%--<s:include value="fragments/header.jsp"/>--%>

<%--<s:form action="saveOrUpdateDepartment">--%>
    <%--<s:push value="department">--%>
        <%--<s:hidden name="id" />--%>
        <%--<s:textfield name="name" label="Department Name" />--%>
        <%--<s:submit />--%>
    <%--</s:push>--%>
<%--</s:form>--%>

<%--<s:if test="departmentList.size() > 0">--%>
    <%--<div class="content">--%>
        <%--<table class="departmentTable" cellpadding="5px">--%>
            <%--<tr class="even">--%>
                <%--<th>Name</th>--%>
                <%--<th>Edit</th>--%>
                <%--<th>Delete</th>--%>
            <%--</tr>--%>
            <%--<s:iterator value="departmentList" status="departmentStatus">--%>
                <%--<tr class="<s:if test="#departmentStatus.odd == true ">odd</s:if><s:else>even</s:else>">--%>
                    <%--<td><s:property value="name" /></td>--%>
                    <%--<td><s:url id="editURL" action="editDepartment">--%>
                        <%--<s:param name="id" value="%{id}"></s:param>--%>
                    <%--</s:url> <s:a href="%{editURL}">Edit</s:a></td>--%>
                    <%--<td><s:url id="deleteURL" action="deleteDepartment">--%>
                        <%--<s:param name="id" value="%{id}"></s:param>--%>
                    <%--</s:url> <s:a href="%{deleteURL}">Delete</s:a></td>--%>
                <%--</tr>--%>
            <%--</s:iterator>--%>
        <%--</table>--%>
    <%--</div>--%>
<%--</s:if>--%>

<%--<s:include value="fragments/footer.jsp"/>--%>

<%--</div>--%>

<%--<s:include value="fragments/scripts.jsp"/>--%>

<%--</body>--%>

<%--</html>--%>