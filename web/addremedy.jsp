<%-- 
    Document   : addremedy
    Created on : 23 Jan, 2023, 2:00:25 PM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    try
    {
        String name = "'" + request.getParameter("t1")+"'";
        String rem = "'" + request.getParameter("t2")+"'";
        String remlink = "'" + request.getParameter("t3")+"'";
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
        Statement st = con.createStatement();
        String q = "insert into yogaremedy(disease, remedy, rlink) values("+name+","+rem+","+remlink+")";
        out.print(q);
        
        st.executeUpdate(q);
        
        st.close();
        con.close();
        response.sendRedirect("addremedy.html");
    }
    catch( Exception e)
    {
        out.println(e);
    }
%>
