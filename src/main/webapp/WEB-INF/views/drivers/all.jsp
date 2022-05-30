    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/index.jsp"/>
<h2 class="formTitle">All Drivers</h2>
<table>
    <tr>
        <th>Name</th>
        <th>License number</th>
        <th></th>
    </tr>
    <c:forEach var="driver" items="${drivers}">
        <tr>
            <td>
                <c:out value="${driver.name}"/>
            </td>
            <td>
                <c:out value="${driver.licenseNumber}"/>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">DELETE</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
