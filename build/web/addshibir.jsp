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
        String city = "'" + request.getParameter("t2")+"'";
        String address = "'" + request.getParameter("t3")+"'";
        String date1 = "'" + request.getParameter("t4")+"'";
        String date2 = "'" + request.getParameter("t5")+"'";
        int fees = Integer.parseInt(request.getParameter("t6"));
        int client = Integer.parseInt(request.getParameter("t7"));
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
        Statement st = con.createStatement();
        String q = "insert into yogashibir(sname, scity, saddress, sdate1, sdate2, sfees, sclients) values("+name+","+city+","+address+","+date1+","+date2+","+fees+","+client+")";
        out.print(q);
        
        st.executeUpdate(q);
        
        st.close();
        con.close();
        response.sendRedirect("addshibir.html");
    }
    catch( Exception e)
    {
        out.println(e);
    }
%>