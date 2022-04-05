<%-- 
    Document   : validation
    Created on : 01-Apr-2022, 3:56:27 pm
    Author     : 91805
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.io.*"%>
<%
 try{
        String username = request.getParameter("uname");  
        String password = request.getParameter("pass");
        //my sql database connection
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
       
       final String DB_URL="jdbc:sqlserver://localhost\\MSSQLSERVER;Database=TTask;portNumber=1433";
       
        // Database credentials(username&password)of sql
       final String USER = "admin";
       final String PASS = "admin";
       
        Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);  
        PreparedStatement pst = conn.prepareStatement("Select user,pass from UserTable where user=? and pass=?");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())           
           out.println("Valid login");        
        else
           out.println("Invalid login");            
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>