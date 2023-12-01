<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Contractor Response to Client Response</title>
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

        h1 {
            color: #333;
        }

        form {
            width: 60%;
            margin: 20px auto;
        }

        table {
            width: 100%;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
            background-color: #d6cbd3;
        }

        th {
            background-color: #d6cbd3;
        }

        tr:nth-child(even) {
            background-color: #d6cbd3;
        }

        tr:hover {
            background-color: #ddd;
        }

        input[type="number"],
        input[type="text"],
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
        <h1>Contractor Response to Client Response</h1>
        <form action="ContractorResponse" method="post">
            <table border="1" cellpadding="5">
                <tr>
                    <th>ContractorID:</th>
                    <td colspan="3">
                        <input type="number" name="ContractorID" onfocus="this.value=''" />
                    </td>
                </tr>
                <tr>
                    <th>ClientResponseID:</th>
                    <td colspan="3">
                        <input type="number" name="ClientResponseID" onfocus="this.value=''" />
                    </td>
                </tr>
                <tr>
                    <th>Status:</th>
                    <td colspan="3">
                        <select name="Status">
                            <option value="RequestAgain">RequestAgain</option>
                            <option value="Rejected">Rejected</option>
                            <option value="Pending">Pending</option>
                            <option value="Accepted">Accepted</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>ResponseDate:</th>
                    <td colspan="3">
                        <input type="text" name="ResponseDate" onfocus="this.value=''" />
                    </td>
                </tr>
                <tr>
                    <th>Note:</th>
                    <td colspan="3">
                        <input type="text" name="Note" onfocus="this.value=''" />
                    </td>
                </tr>
                <tr>
                    <th>ModifiedPrice:</th>
                    <td colspan="3">
                        <input type="number" name="ModifiedPrice" onfocus="this.value=''" />
                    </td>
                </tr>
                <tr>
                    <th>ModifiedWorkPeriodFrom:</th>
                    <td colspan="3">
                        <input type="text" name="ModifiedWorkPeriodFrom" onfocus="this.value=''" />
                    </td>
                </tr>
                <tr>
                    <th>ModifiedWorkPeriodTo:</th>
                    <td colspan="3">
                        <input type="text" name="ModifiedWorkPeriodTo" onfocus="this.value=''" />
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <input type="submit" value="Submit Response" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>