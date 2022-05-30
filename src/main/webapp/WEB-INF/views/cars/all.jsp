<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/index.jsp"/>
<h2 class="formTitle">All Cars</h2>
<table>
    <tr>
        <th>Model</th>
        <th>Manufacturer name</th>
        <th>Manufacturer country</th>
        <th>Drivers</th>
        <th></th>
    </tr>
    <jsp:useBean id="cars" scope="request" type="java.util.List"/>
    <c:forEach var="car" items="${cars}">
        <tr>
            <td>
                <c:out value="${car.model}"/>
            </td>
            <td>
                <c:out value="${car.manufacturer.name}"/>
            </td>
            <td>
                <c:out value="${car.manufacturer.country}"/>
            </td>
            <td>
                <c:forEach var="driver" items="${car.drivers}">
                    ${driver.name} ${driver.licenseNumber} <br>
                </c:forEach>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">${delete_car}</a>
                <a href="${pageContext.request.contextPath}/drivers/cars/delete?id=${car.id}">${delete_driver_car}</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
