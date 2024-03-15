<%-- 
    Document   : enrollment
    Created on : 30 Jan, 2023, 8:52:10 PM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    try
    {
        int shid = Integer.parseInt(request.getParameter("t1"));
        String shname = "'" + request.getParameter("t2")+"'";
        String shcity = "'" + request.getParameter("t3")+"'";
        String shadd = "'" + request.getParameter("t4")+"'";
        String shdate1 = "'" + request.getParameter("t5")+"'";
        String shdate2 = "'" + request.getParameter("t6")+"'";
        int shfees = Integer.parseInt(request.getParameter("t7"));
        String shcname = "'" +request.getParameter("t8")+"'";
        String shmo = "'" + request.getParameter("t9")+"'";
        String shpay = "'" + request.getParameter("t10")+"'";
        String shtid = "'" + request.getParameter("t11")+"'";
        String shad = "'" + request.getParameter("t12")+"'";
        out.print(shid);
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
        Statement st = con.createStatement();
        String q = "insert into enrollment(sid, esname, ecity, eaddress, edate1, edate2, shibirfees, ecname, emo, epay, etid, applyd) values("+shid+","+shname+","+shcity+","+shadd+","+shdate1+","+shdate2+","+shfees+","+shcname+","+shmo+","+shpay+","+shtid+","+shad+")";
        out.print(q);
        st.executeUpdate(q);
        
        st.close();
        con.close();
       response.sendRedirect("clientdashboard.jsp");
        
    }
    catch(Exception e)
    {
        out.println(e.getMessage());
    }
%>
<%--

Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
        Statement st = con.createStatement();
        String q = "insert into enrollment(sid, esname, ecity, eaddress, edate1, edate2, shibirfees, ecname, emo, epay, etid) values("+shid+","+shname+","+shcity+","+shadd+","+shdate1+","+shdate2+","+shfees+","+shcname+","+shmo+","+shpay+","+shtid+")";
        out.print(q);
        
       // 

--%>
