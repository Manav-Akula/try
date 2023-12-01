<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Request a Quote</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: white;
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
<div>
        <h1>Request a Quote</h1>
        <form action="RequestQuote" method="post">
            <table border="1" cellpadding="5">
             <tr>
                <th>ClientID: </th>
                <td align="center" colspan="3">
                    <input type="text" name="RequestDate" size="45"  onfocus="this.value=''" />                        
                </td>
            </tr>
            <tr>
                <th>RequestDate:</th>
                <td align="center" colspan="3">
                    <input type="text" name="RequestDate" size="45"  onfocus="this.value=''" />                        
                </td>
            </tr>
            <tr>
                <th>Status:</th>
                <td align="center" colspan="3">
                    <input type="text" name="Status" size="45"  onfocus="this.value=''" />                        
                </td>
            </tr>  
            <tr>
                <th>Note:</th>
                <td align="center" colspan="3">
                    <input type="text" name="Note" size="45"  onfocus="this.value=''" />                        
                </td>
            </tr>
            <tr>
                <th>Number Of trees:</th>
                <td align="center" colspan="3">
                    <input type="text" name="NumberOfTrees" size="45"  onfocus="this.value=''" />                        
                </td>
            </tr>
            <tr>
                <th>Avg Size:</th>
                <td align="center" colspan="3">
                    <input type="text" name="AvgSize" size="45"  onfocus="this.value=''" />                        
                </td>
            </tr>
            <tr>
                <th>Avg Height:</th>
                <td align="center" colspan="3">
                    <input type="number" name="AvgHeight" size="45"  onfocus="this.value=''" />                        
                </td>
            </tr>
            <tr>
                <th>Height of the Tallest Tree :</th>
                <td align="center" colspan="3">
                    <input type="text" name="AvgSize" size="45"  onfocus="this.value=''" />                        
                </td>
            </tr>
            <tr>
                <th>Location:</th>
                <td align="center" colspan="3">
                    <input type="text" name="Location" size="45"  onfocus="this.value=''" />                        
                </td>
            </tr>
            <tr>
                <th>Proximity To House:</th>
                <td align="center" colspan="3">
                    <input type="number" name="Proximity" size="45"  onfocus="this.value=''" />                        
                </td>
            </tr>
            <tr>
                <td align="center" colspan="5">
                    <input type="submit" value="Request Quote" />
                </td>
            </tr>
        </table>
    </form>
    </div>
</body>
</html>
