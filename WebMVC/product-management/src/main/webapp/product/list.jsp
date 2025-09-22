<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 9/22/2025
  Time: 11:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Danh sách sản phẩm</h1>
<a href="${pageContext.request.contextPath}/products?action=create">➕ Thêm sản phẩm</a>
<form action="/products?action=search" method="post">
    <label>Search by name: </label>
    <input type="text" name="search">
    <input type="submit" value="Search">
</form>
<table border="1" cellpadding="10px">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Manufacturer</th>
        <th>Action</th>
    </tr>
    <c:forEach var="item" items='${requestScope["products"]}'>
        <tr>
            <td>${item.id}</td>
            <td>${item.name}</td>
            <td><fmt:formatNumber value="${item.price}" type="currency" currencySymbol="₫" groupingUsed="true"/></td>
            <td>${item.description}</td>
            <td>${item.manufacturer}</td>
            <td>
                <a href="${pageContext.request.contextPath}/products?action=detail&id=${item.id}">Xem</a>
                <a href="${pageContext.request.contextPath}/products?action=edit&id=${item.id}">✏️ Sửa</a> |
                <a href="${pageContext.request.contextPath}/products?action=delete&id=${item.id}">🗑️ Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
