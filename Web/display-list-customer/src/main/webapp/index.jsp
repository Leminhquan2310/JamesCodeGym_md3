<%@ page import="Customer.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.time.LocalDate" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<style>
    table {
        width: 70%;
    }

    table img {
        width: 200px;
        height: 200px;

    }
</style>
<body>
<%
    List<Customer> list = new ArrayList<>();
    list.add(new Customer("Mai Văn Hoàn", LocalDate.parse("1983-08-20"), "Hà Nội", "https://hthaostudio.com/wp-content/uploads/2020/07/Thanh-dat-xanh-5.jpg"));
    list.add(new Customer("Nguyễn Văn Nam", LocalDate.parse("1983-08-21"), "Bắc Giang", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBL0bPIX-nTmcXtUhu2RqsmDt6dGGpu_WSENAb_pv0fwynvhZ0c_kB5xgeaXiIihO0Uko&usqp=CAU"));
    list.add(new Customer("Nguyễn Thái Hòa", LocalDate.parse("1983-08-22"), "Nam Định", "https://htmediagroup.vn/wp-content/uploads/2022/11/Anh-7-copy-min-585x878.jpg.webp"));
    list.add(new Customer("Trần Đăng Khoa", LocalDate.parse("1983-08-17"), "Hà Tây", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7b9iXbg8xtp5yVyo_K5ivunQh6B8wakaKgtUZtay2FHdJnTmKqkYEyk6TBIL9_AajkjE&usqp=CAU"));
    list.add(new Customer("Nguyễn Đình Thi", LocalDate.parse("1983-08-19"), "Hà Nội", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmWsJyPcmIIRt0P_9rwc0tB9iYMlJ4nvCkI2y27RWNy2Ep92sK-54IMD_x52iGenQ1hJs&usqp=CAU"));

    request.setAttribute("list", list);
%>
<h1>
    <%= "Danh sách khách hàng" %>
</h1>
<br/>
<table border="1" cellspacing="0" cellpadding="5">
    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    <c:forEach var="c" items="${list}">
        <tr>
            <td>${c.name}</td>
            <td>${c.birthDay}</td>
            <td>${c.address}</td>
            <td><img src="${c.image}" width="80"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>