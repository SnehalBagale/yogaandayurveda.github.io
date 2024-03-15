<%-- 
    Document   : clientvalid
    Created on : 13 Nov, 2022, 9:15:40 PM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    try
    {
        String fname = "'" + request.getParameter("txtuser")+"'";
        String email = "'" + request.getParameter("txtpass")+"'";
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
        Statement st = con.createStatement();
        String q = ("select * from client where email=? and password=?");
        out.print(q);
        
        st.executeUpdate(q);
        
        st.close();
        con.close();
        response.sendRedirect("Homepage.html");
    }
    catch( Exception e)
    {
        out.println(e);
    }
%>
