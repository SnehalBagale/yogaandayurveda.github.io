<%-- 
    Document   : addshibir
    Created on : 22 Jan, 2023, 11:13:22 AM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    try
    {
        String name = "'" + request.getParameter("t1")+"'";
        String disease = "'" + request.getParameter("t2")+"'";
        String link = "'" + request.getParameter("t3")+"'";
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
        Statement st = con.createStatement();
        String q = "insert into yogavideo(vname, vdisease, vlink) values("+name+","+disease+" ,"+link+")";
        out.print(q);
        
        st.executeUpdate(q);
        
        st.close();
        con.close();
        response.sendRedirect("addvideo.html");
    }
    catch( Exception e)
    {
        out.println(e);
    }
%>