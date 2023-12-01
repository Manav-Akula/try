<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Contractor list</title>
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

        td[colspan="4"] {
            text-align: center;
        }
    </style>
</head>
<body>
    <div>
        <table border="1" cellpadding="5">
            <caption><h2>List of Contractors</h2></caption>
            <tr>
                <th>ContractorID</th>            
                <th>Username</th>
                <th>Password</th>
                <th>Email</th>
            </tr>
            <c:forEach var="contractor" items="${listContractor}">
                <tr>
                    <td><c:out value="${contractor.contractorID}" /></td>                   
                    <td><c:out value="${contractor.username}" /></td>
                    <td><c:out value="${contractor.password}" /></td>
                    <td><c:out value="${contractor.email}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
