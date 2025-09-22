<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 9/22/2025
  Time: 12:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .message {
            color: green;
        }
    </style>
</head>
<body>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<a href="/products">Back to product list</a>
<h1>Thêm mới sản phẩm</h1>
<form action="${pageContext.request.contextPath}/products?action=create" method="post">
    <label>Tên:</label> <input type="text" name="name"><br><br>
    <label>Giá:</label> <input type="number" step="0.01" name="price"><br><br>
    <label>Mô tả:</label> <input type="text" name="description"><br><br>
    <label>Hãng SX:</label> <input type="text" name="manufacturer"><br><br>
    <button type="submit">Lưu</button>
    <a href="${pageContext.request.contextPath}/products">Hủy</a>
</form>
</body>
</html>
