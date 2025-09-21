<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Simple Calculator</h1>

<form action="calculate" method="post">
    <fieldset>
        <legend>Calculator</legend>

        <label for="first">First operand:</label>
        <input type="text" id="first" name="first" required>
        <br><br>

        <label for="operator">Operator:</label>
        <select id="operator" name="operator">
            <option value="add">Addition</option>
            <option value="sub">Subtraction</option>
            <option value="mul">Multiplication</option>
            <option value="div">Division</option>
        </select>
        <br><br>

        <label for="second">Second operand:</label>
        <input type="text" id="second" name="second" required>
        <br><br>

        <input type="submit" value="Calculate">
    </fieldset>
</form>
</body>
</html>