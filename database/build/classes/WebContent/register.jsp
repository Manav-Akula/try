<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        div {
            text-align: center;
            margin-top: 50px;
        }

        p {
            color: red;
            font-weight: bold;
        }

        form {
            width: 50%;
            margin: 20px auto;
            background-color: #d6cbd3;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: center;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        select {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        a {
            text-decoration: none;
            color: #007bff;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div>
        <p>${errorOne}</p>
        <p>${errorTwo}</p>
        <form action="register" method="post">
            <table border="1" cellpadding="5">
                <tr>
                    <th>First name:</th>
                    <td align="center" colspan="3">
                        <input type="text" name="FirstName" size="45"  onfocus="this.value=''" />                        
                    </td>
                </tr>
                
                <tr>
                    <th>Last name:</th>
                    <td align="center" colspan="3">
                        <input type="text" name="LastName" size="45"  onfocus="this.value=''" />                        
                    </td>
                </tr>
                <tr>
                    <th>Email:</th>
                    <td align="center" colspan="3">
                       <input type="email" name="Email" size="45" onfocus="this.value=''" />
                    </td>
                </tr>
                <tr>
                    <th>PhoneNumber:</th>
                    <td align="center" colspan="3">
                       <input type="PhoneNumber" name="PhoneNumber" size="45" onfocus="this.value=''" />
                    </td>
                </tr>
                <tr>
                    <th>Password:</th>
                    <td align="center" colspan="3">                        
                        <input type="password" name="Password" size="45" onfocus="this.value=''" />                        
                    </td>
                </tr>
                <tr>
                    <th>Password Confirmation:</th>
                    <td align="center" colspan="3">
                       <input type="password" name="confirmation" size="45" onfocus="this.value=''" />
                    </td>
                </tr>
                <tr>
                    <th>CreditCardInfo:</th>
                    <td align="center" colspan="3">
                       <input type="CreditCardInfo" name="CreditCardInfo" size="45" onfocus="this.value=''" />
                    </td>
                </tr>
                <tr>
                    <th>Role:</th>
                    <td align="center" colspan="3">
                        <select name="Role" style="width: 100%;">
                            <option value="Client">Client</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="5">
                        <input type="submit" value="Register" />
                    </td>
                </tr>
            </table>
            <p>Already Registered? <a href="login.jsp" target="_self">Return to Login Page</a></p>
        </form>
    </div>
</body>
</html>