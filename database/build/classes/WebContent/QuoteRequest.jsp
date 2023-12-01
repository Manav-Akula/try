<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Quote Request Info</title>
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
    <div>
        <form action="QuoteRequest" method="post">
            <input type="submit" value="Click here"/>
        </form>
        <table border="1" cellpadding="5">
            <caption>List of Quote Requests </caption> 
            <tr>
                <th>Client ID</th>
                <th>Request Date</th>
                <th>Status</th>
                <th>Note</th>
                <th>NumberOfTrees<th>
                <th>AvgSize</th>
                <th>AvgHeight</th>
                <th>Location</th>
                <th>Proximity to House</th>
            </tr>
            <c:forEach var="request" items="${listRequests}">
                <tr>
                    <td><c:out value="${request.clientID}" /></td>
                    <td><c:out value="${request.requestDate}" /></td>
                    <td><c:out value="${request.status}" /></td>
                    <td><c:out value="${request.note}" /></td>
                    <td><c:out value="${request.numberOfTrees}" /></td>
                    <td><c:out value="${request.avgSize}" /></td>
                    <td><c:out value="${request.avgHeight}" /></td>
                    <td><c:out value="${request.location}" /></td>
                    <td><c:out value="${request.proximityToHouse}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
