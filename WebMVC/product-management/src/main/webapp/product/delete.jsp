<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 9/22/2025
  Time: 12:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Xóa sản phẩm</title>
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
<c:if test='${requestScope["product"] != null}'>
    <h2>Bạn có chắc muốn xóa sản phẩm này?</h2>
    <p>
        <b>${product.name}</b> - ${product.manufacturer}
    </p>
    <form action="${pageContext.request.contextPath}/products?action=delete" method="post">
        <input type="hidden" name="id" value="${product.id}">
        <button type="submit">Xóa</button>
        <a href="${pageContext.request.contextPath}/products">Hủy</a>
    </form>
</c:if>

</body>
</html>
