<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 9/22/2025
  Time: 1:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Xem chi tiết sản phẩm</title>
</head>
<body>
<a href="/products">Back to product list</a>
<h1>Chi tiết sản phẩm</h1>
<h2>Id: <c:out value="${product.id}"/></h2>
<h2>Name: <c:out value="${product.name}"/></h2>
<h2>Price: <fmt:formatNumber value="${product.price}" type="currency" currencySymbol="đ" groupingUsed="true"/></h2>
<h2>Description: <c:out value="${product.description}"/></h2>
<h2>Manufacturer: <c:out value="${product.manufacturer}"/></h2>
</body>
</html>
