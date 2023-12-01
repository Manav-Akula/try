<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login to Database</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: #333;
        }

        table {
            width: 50%;
            margin-top: 20px;
            background-color: #d6cbd3;
        }

        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #d6cbd3;
        }

        input[type="text"], input[type="password"], select {
            width: 100%;
            padding: 8px;
            margin: 4px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        p {
            color: #ff0000;
        }

        a {
            text-decoration: none;
            color: #0066cc;
        }

        a:hover {
            text-decoration: underline;
        }

        .welcome-message {
            margin-top: 20px;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <center><h1>Welcome to DS's Login page</h1></center>
    <div align="center">
        <p>${loginFailedStr}</p>
        <form action="login" method="post">
            <table border="1" cellpadding="5">
                <tr>
                    <th>Username:</th>
                    <td>
                        <input type="text" name="username" size="45" autofocus>
                    </td>
                </tr>
                <tr>
                    <th>Password:</th>
                    <td>
                        <input type="password" name="password" size="45">
                    </td>
                </tr>
                <tr>
                    <th>Role:</th>
                    <td>
                    
                         <select name="role" style="width: 100%;">
                            <option value="Client">Client</option>
                            <option value="Administrator">Administrator</option>
                            <option value="Contractor">Contractor</option>
                           
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Login">
                    </td>
                </tr>
            </table>
            <p>Don't have an account? 
            <a href="register.jsp" target="_self">Register Here</a> </p>
        </form>
    </div>
    <div class="welcome-message">
        <c:choose>
            <c:when test="${not empty userRole and userRole eq 'Client'}">
                <p>Hello there Client!</p>            
            </c:when>
            <c:when test="${not empty userRole and (userRole eq 'Administrator' or userRole eq 'Contractor')}">
                <p>Hello Boss!</p>          
            </c:when>
        </c:choose>
    </div>
</body>
</html>