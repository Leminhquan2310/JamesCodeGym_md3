<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Product Discount Calculator</h1>
<form action="/display-discount" method="post">
    <label for="description">Product Description: </label>
    <input type="text" name="description"> <br>

    <label for="list-price">List Price: </label>
    <input type="text" name="list-price"> <br>

    <label for="discount-percent">Product Percent</label>
    <input type="number" min="0" max="100" name="discount-percent">

    <input type="submit" value="Calculate Discount">
</form>
</body>
</html>