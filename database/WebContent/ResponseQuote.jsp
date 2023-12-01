<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Response a Quote</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        div {
            background-color: #fff;
            border: 1px solid #ddd;
            padding: 20px;
            margin: 50px auto;
            max-width: 600px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
            text-align: center;
        }

        table {
            width: 100%;
            margin-top: 20px;
            background-color: #d6cbd3;
        }

        th, td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #d6cbd3;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 8px;
            margin: 4px 0;
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
    </style>
</head>
<body>
    <div align="center">
        <h1>Response a Quote</h1>
        <form action="ResponseQuote" method="post">
            <table border="1" cellpadding="5">
            <tr>
                <th>RequestID:</th>
                <td align="center" colspan="3">
                    <input type="number" name="RequestID" size="45"  onfocus="this.value=''" />                        
                </td>
            </tr>
            <tr>
                <th>ClientID:</th>
                <td align="center" colspan="3">
                    <input type="number" name="ClientID" size="45"  onfocus="this.value=''" />                        
                </td>
            </tr>
            <tr>
                <th>ResponseDate:</th>
                <td align="center" colspan="3">
                    <input type="text" name="ResponseDate" size="45"  onfocus="this.value=''" />                        
                </td>
            </tr>
            <tr>
                <th>Price:</th>
                <td align="center" colspan="3">
                    <input type="number" name="Price" size="45"  onfocus="this.value=''" />                        
                </td>
            </tr>
            <tr>
                <th>WorkPeriodFrom:</th>
                <td align="center" colspan="3">
                    <input type="text" name="WorkPeriodFrom" size="45"  onfocus="this.value=''" />                        
                </td>
            </tr>
            <tr>
                <th>WorkPeriodTo:</th>
                <td align="center" colspan="3">
                    <input type="text" name="WorkPeriodTo" size="45"  onfocus="this.value=''" />                        
                </td>
            </tr>
            <tr>
                <th>Note:</th>
                <td align="center" colspan="3">
                    <input type="text" name="Note" size="45"  onfocus="this.value=''" />                        
                </td>
            </tr>
            <tr>
                <td align="center" colspan="5">
                    <input type="submit" value="Submit Response" />
                </td>
            </tr>
        </table>
    </form>
    </div>
</body>
</html>