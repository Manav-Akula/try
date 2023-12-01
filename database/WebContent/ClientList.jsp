<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Client List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        div {
            text-align: center;
            margin: 20px;
        }

        form {
            margin-bottom: 20px;
        }

        table {
            width: 80%;
            margin: 20px auto;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
            background-color: #d6cbd3;
        }

        th {
            background-color: #d6cbd3;
        }

        h2 {
            color: #333;
        }

        tr:nth-child(even) {
            background-color: #d6cbd3;
        }

        tr:hover {
            background-color: #ddd;
        }

        td[colspan="8"] {
            text-align: center;
        }

        a {
            text-decoration: none;
            color: #333;
            margin-right: 10px;
        }

        a:hover {
            color: #4caf50;
        }
    </style>
</head>
<body>
<div>
    <form action="ClientList" method="post">
        <input type="submit" value="Click here"/>
    </form>
    <a href="login.jsp" target="_self">Logout</a><br><br>

    <table border="1" cellpadding="5">
        <caption><h2>List of Clients</h2></caption>
        <tr>
            <th>ClientID</th>
            <th>FirstName</th>
            <th>LastName</th>
            <th>Password</th>
            <th>Address</th>
            <th>CreditCardInfo</th>
            <th>PhoneNumber</th>
            <th>Email</th>
        </tr>

        <c:forEach var="client" items="${listClient}">
            <tr>
                <td><c:out value="${client.clientID}" /></td>
                <td><c:out value="${client.firstName}" /></td>
                <td><c:out value="${client.lastName}" /></td>
                <td><c:out value="${client.password}" /></td>
                <td><c:out value="${client.address}" /></td>
                <td><c:out value="${client.creditCardInfo}" /></td>
                <td><c:out value="${client.phoneNumber}" /></td>
                <td><c:out value="${client.email}" /></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
