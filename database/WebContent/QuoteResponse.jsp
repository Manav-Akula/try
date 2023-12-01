<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Quote Response Info</title>
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
            width: 100%;
            margin-top: 20px;
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
            text-align: center;
        }
    </style>
</head>
<body>
    <div align="center">
     <form action="QuoteResponse" method="post">
      <input type = "submit" value = "Click here"/>
	</form>
    <table border="1" cellpadding="5">
        <caption>List of Quote Responses</caption>
        <table border="1">
            <tr>
                <th>Response ID</th>
                <th>Request ID</th>
                <th>Client ID</th>      
                <th>Response Date</th>
                <th>Price</th>
                <th>Work Period From</th>
                <th>Work Period To</th>
                <th>Note</th>
            </tr>
            <c:forEach var="response" items="${listResponses}">
                <tr>
                    <td><c:out value="${response.responseID}" /></td>
                    <td><c:out value="${response.requestID}" /></td>
                    <td><c:out value="${response.clientID}" /></td>                    
                    <td><c:out value="${response.responseDate}" /></td>
                    <td><c:out value="${response.price}" /></td>
                    <td><c:out value="${response.workPeriodFrom}" /></td>
                    <td><c:out value="${response.workPeriodTo}" /></td>
                    <td><c:out value="${response.note}" /></td> 
                </tr>
            </c:forEach>
        </table> 
</body>
</html>
