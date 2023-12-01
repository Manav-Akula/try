<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Client Respond to a Quote Response</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        div {
            background-color: #d6cbd3;
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
        input[type="number"],
        select {
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
        <h1>Client Respond to a Quote Response</h1>
        <form action="ClientResponse" method="post">
            <table border="1" cellpadding="5">      
            <tr>
                <th>ContractorID:</th>
                <td align="center" colspan="3">
                    <input type="number" name="ContractorID" size="45"  onfocus="this.value=''" />                        
                </td>
            </tr>
            <tr>
                <th>ResponseID:</th>
                <td align="center" colspan="3">
                    <input type="number" name="ResponseID" size="45"  onfocus="this.value=''" />                        
                </td>
            </tr>
            <tr>
                <th>ResponseDate:</th>
                <td align="center" colspan="3">
                    <input type="text" name="ResponseDate" size="45"  onfocus="this.value=''" />                        
                </td>
            </tr>
            <tr>
                <th>Status:</th>
                <td align="center" colspan="3">
                    <select name="Status" style="width: 100%;">
                        <option value="RequestAgain">RequestAgain</option>
                        <option value="Rejected">Rejected</option>
                        <option value="Pending">Pending</option>
                        <option value="Accepted">Accepted</option>
                    </select>
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
                    <input type="submit" value="Respond Back" />
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>