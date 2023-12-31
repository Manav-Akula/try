import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.PreparedStatement;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
/**
 * Servlet implementation class Connect
 */
@WebServlet("/QuoteRequestDAO")
public class QuoteRequestDAO 
{
	private static final long serialVersionUID = 1L;
	private Connection connect = null;
	private Statement statement = null;
	private PreparedStatement preparedStatement = null;
	private ResultSet resultSet = null;
	
	public QuoteRequestDAO(){}
	
	/** 
	 * @see HttpServlet#HttpServlet()
     */
	 protected void connect_func() throws SQLException {
		 System.out.println("We are inside the connect_func of the QuoteRequestDAO file");
	        //uses default connection to the database
	        if (connect == null || connect.isClosed()) {
	            try {
	                Class.forName("com.mysql.cj.jdbc.Driver");
	            } catch (ClassNotFoundException e) {
	                throw new SQLException(e);
	            }
	            connect = (Connection) DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/pro?allowPublicKeyRetrieval=true&useSSL=false&user=john&password=Pass1550");
	            System.out.println(connect);
	            System.out.println("Connection Established from QuoteRequest");
	        }
	    }
	 	
		    
	 public boolean database_login(String email, String password) throws SQLException {
		    try {
		        connect_func("root", "pass1234");
		        String sql = "SELECT * FROM QuoteRequest WHERE RequestID = ?";
		        preparedStatement = connect.prepareStatement(sql);
		        preparedStatement.setString(1, email);
		        ResultSet rs = preparedStatement.executeQuery();
		        return rs.next();
		    } catch (SQLException e) {
		        e.printStackTrace(); // Log the exception for debugging purposes
		        return false;
		    } finally {
		        disconnect();
		    }
		}

    
  //connect to the database
    public void connect_func(String username, String password) throws SQLException {
        if (connect == null || connect.isClosed()) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                throw new SQLException(e);
            }
            connect = (Connection) DriverManager
                    .getConnection("jdbc:mysql://127.0.0.1:3306/pro?"
                            + "useSSL=false&user=" + username + "&password=" + password);
            System.out.println(connect);
        }
    }
    
    public List<QuoteRequest> listAllRequests() throws SQLException {
        List<QuoteRequest> listRequests = new ArrayList<QuoteRequest>();
        String sql = "SELECT * FROM QuoteRequest"; // Corrected the table name to QuoteRequest
        connect_func();
        statement = (Statement) connect.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);

        while (resultSet.next()) {
            int requestID = resultSet.getInt("RequestID");
            int clientID = resultSet.getInt("ClientID");          
            String requestDate = resultSet.getString("RequestDate");
            String status = resultSet.getString("Status");
            String note = resultSet.getString("Note");
            String numberOfTrees = resultSet.getString("NumberOfTrees");
            String avgSize = resultSet.getString("AvgSize");
            double avgHeight = resultSet.getDouble("AvgHeight");
            String heightOfTallestTree = resultSet.getString("HeightOfTallestTree");
            String location = resultSet.getString("Location");
            double proximityToHouse = resultSet.getDouble("ProximityToHouse");

            QuoteRequest request = new QuoteRequest(clientID, requestDate, status, note, numberOfTrees, avgSize, avgHeight, heightOfTallestTree, location, proximityToHouse);
            listRequests.add(request);
        }
        resultSet.close();
        disconnect();
        return listRequests;
    }

    protected void disconnect() throws SQLException {
        if (connect != null && !connect.isClosed()) {
        	connect.close();
        }
    }
    
    public void insert(QuoteRequest request) throws SQLException {
        connect_func("root", "pass1234");
        String sql = "INSERT INTO QuoteRequest (ClientID, RequestDate, Status, Note, NumberOfTrees, AvgSize, AvgHeight, HeightOfTallestTree, Location, ProximityToHouse) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        preparedStatement = (PreparedStatement) connect.prepareStatement(sql);
        preparedStatement.setInt(1, request.getClientID());
        preparedStatement.setString(2, request.getRequestDate());
        preparedStatement.setString(3, request.getStatus());
        preparedStatement.setString(4, request.getNote());
        preparedStatement.setString(5, request.getNumberOfTrees());
        preparedStatement.setString(6, request.getAvgSize());
        preparedStatement.setDouble(7, request.getAvgHeight());
        preparedStatement.setString(8, request.getHeightOfTallestTree());
        preparedStatement.setString(9, request.getLocation());
        preparedStatement.setDouble(10, request.getProximityToHouse());

        preparedStatement.executeUpdate();
        preparedStatement.close();
    }

    public boolean delete(int RequestID) throws SQLException {
        String sql = "DELETE FROM QuoteRequest WHERE RequestID = ?";
        connect_func();

        preparedStatement = (PreparedStatement) connect.prepareStatement(sql);
        preparedStatement.setInt(1, RequestID);

        boolean rowDeleted = preparedStatement.executeUpdate() > 0;
        preparedStatement.close();
        return rowDeleted;
    }

     
    public boolean updateQuoteRequest(QuoteRequest quoteRequest) throws SQLException {
        String sql = "UPDATE QuoteRequest SET ClientID=?, RequestDate=?, Status=?, Note=?, NumberOfTrees=?, AvgSize=?, AvgHeight=?, HeightOfTallestTree=?, Location=?, ProximityToHouse=? WHERE RequestID=?";
        connect_func();

        preparedStatement = (PreparedStatement) connect.prepareStatement(sql);
        preparedStatement.setInt(1, quoteRequest.getClientID());       
        preparedStatement.setString(2, quoteRequest.getRequestDate());
        preparedStatement.setString(3, quoteRequest.getStatus());
        preparedStatement.setString(4, quoteRequest.getNote());
        preparedStatement.setString(5, quoteRequest.getNumberOfTrees());
        preparedStatement.setString(6, quoteRequest.getAvgSize());
        preparedStatement.setDouble(7, quoteRequest.getAvgHeight());
        preparedStatement.setString(8, quoteRequest.getHeightOfTallestTree());
        preparedStatement.setString(9, quoteRequest.getLocation());
        preparedStatement.setDouble(10, quoteRequest.getProximityToHouse());
        preparedStatement.setInt(11, quoteRequest.getRequestID());

        boolean rowUpdated = preparedStatement.executeUpdate() > 0;
        preparedStatement.close();
        return rowUpdated;
    }

    
    public QuoteRequest getQuoteRequest(int requestID) throws SQLException {
        QuoteRequest quoteRequest = null;
        String sql = "SELECT * FROM QuoteRequest WHERE RequestID = ?";

        connect_func();

        preparedStatement = (PreparedStatement) connect.prepareStatement(sql);
        preparedStatement.setInt(1, requestID);

        ResultSet resultSet = preparedStatement.executeQuery();

        if (resultSet.next()) {
            int clientID = resultSet.getInt("ClientID");            
            String requestDate = resultSet.getString("RequestDate");
            String status = resultSet.getString("Status");
            String note = resultSet.getString("Note");
            String numberOfTrees = resultSet.getString("NumberOfTrees");
            String avgSize = resultSet.getString("AvgSize");
            double avgHeight = resultSet.getDouble("AvgHeight");
            String heightOfTallestTree = resultSet.getString("HeightOfTallestTree");
            String location = resultSet.getString("Location");
            double proximityToHouse = resultSet.getDouble("ProximityToHouse");

            quoteRequest = new QuoteRequest(clientID, requestDate, status, note, numberOfTrees, avgSize, avgHeight, heightOfTallestTree, location, proximityToHouse);
        }

        resultSet.close();
        preparedStatement.close();
        disconnect(); // Close the connection after use

        return quoteRequest;
    }


    
    public boolean checkRequestID(int RequestID) throws SQLException {
        boolean checks = false;
        String sql = "SELECT * FROM QuoteRequest WHERE RequestID = ?";
        connect_func();
        preparedStatement = (PreparedStatement) connect.prepareStatement(sql);
        preparedStatement.setInt(1, RequestID);
        ResultSet resultSet = preparedStatement.executeQuery();

        if (resultSet.next()) {
            checks = true;
        }

        resultSet.close();
        preparedStatement.close();
        return checks;
    }

    
    
    
    
    public boolean isValid(int RequestID, int ClientID) throws SQLException {
        String sql = "SELECT * FROM QuoteRequest WHERE RequestID = ? AND ClientID = ?";
        connect_func();

        preparedStatement = (PreparedStatement) connect.prepareStatement(sql);
        preparedStatement.setInt(1, RequestID);
        preparedStatement.setInt(2, ClientID);

        ResultSet resultSet = preparedStatement.executeQuery();

        boolean isValid = resultSet.next(); // Check if a matching record is found

        resultSet.close();
        preparedStatement.close();
        return isValid;
    }

    
    public void init() throws SQLException, FileNotFoundException, IOException {
        connect_func();
        statement = (Statement) connect.createStatement();

        String[] INITIAL = {
            "drop database if exists pro;",
            "create database pro;",
            "use pro;",
            "drop table if exists QuoteRequest;",
            "CREATE TABLE if not exists QuoteRequest ( " +
            "RequestID INT AUTO_INCREMENT PRIMARY KEY, " +
            "ClientID INT, " +
            "RequestDate DATE," +
            "Status VARCHAR(100)," +
            "Note VARCHAR(200)," +
            "NumberOfTrees VARCHAR(10)," +
            "AvgSize VARCHAR(10)," +
            "AvgHeight DECIMAL(3, 1)," +
            "HeightOfTallestTree VARCHAR(50),"+
            "Location VARCHAR(100)," +
            "ProximityToHouse FLOAT(20)" +
            "FOREIGN KEY (ClientID) REFERENCES Client (ClientID)," +"); "
        };
        
    

        String[] TUPLES = {("insert into QuoteRequest ( ClientID, RequestDate, Status, Note, NumberOfTrees, AvgSize, AvgHeight, HeightOfTallestTree, Location, ProximityToHouse)" +
            "values ( 1,'2010-01-01', 'Bad', 'note1', 1, 10, 10.1, 10, 'frontyard', 16.9)," +
            "( 2,'2011-02-02', 'Good', 'note2', 2, 6, 11.2, 12, 'backyard', 15.8),"+
            "( 3,'2012-03-03', 'Good', 'note3', 3, 5, 13.3, 14, 'frontyard', 14.7),"+
            "( 4,'2013-04-04', 'Ok', 'note4', 4, 8, 9.4, 16, 'backyard', 7.6),"+
            "( 5,'2014-05-05', 'Bad', 'note5', 5, 9, 8.5, 18, 'frontyard', 5.5),"+
            "( 6,'2015-06-06', 'Ok', 'note6', 6, 4, 7.6, 20, 'backyard', 9.4),"+
            "( 7,'2016-07-07', 'Good', 'note7', 7, 4, 14.7, 22, 'frontyard', 13.3),"+
            "( 8,'2017-08-08', 'Bad', 'note8', 8, 9, 15.8, 24, 'backyardyard', 11.2),"+           
            "( 9,'2018-09-09', 'Ok', 'note9', 9, 12, 16.9, 26, 'frontyard', 10.1);")
        };

        // Loop to execute the SQL statements
        for (int i = 0; i < INITIAL.length; i++)
            statement.execute(INITIAL[i]);
        for (int i = 0; i < TUPLES.length; i++)
            statement.execute("INSERT INTO QuoteRequest (ClientID, RequestDate, Status, Note, NumberOfTrees, AvgSize, AvgHeight, HeightOfTallestTree, Location, ProximityToHouse) VALUES " + TUPLES[i]);
        disconnect();
    }

   
    
    
    
    
    
	
	

}
