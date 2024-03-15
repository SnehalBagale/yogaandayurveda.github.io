<%-- 
    Document   : drdatainsert
    Created on : 25 Dec, 2022, 10:39:22 AM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    try
    {
        String fname = "'" + request.getParameter("txtname")+"'";
        String email = "'" + request.getParameter("txtemail")+"'";
        String pass = "'" + request.getParameter("txtpass1")+"'";
        //String cpass = "'" + request.getParameter("txtpass2")+"'";
        String mobileno = "'" + request.getParameter("txtmono")+"'";
        String aadhaarno = "'" + request.getParameter("txtano")+"'";
        String panno = "'" + request.getParameter("txtpno")+"'";
        String degree = "'" + request.getParameter("txtdegree")+"'";
        String speciality = "'" + request.getParameter("txtspecial")+"'";
        String experience = "" + request.getParameter("txtexp")+"";
        String pera = "'" + request.getParameter("txtpa")+"'";
        String cura = "'" + request.getParameter("txtca")+"'";
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
        Statement st = con.createStatement();
        String q = "insert into doctor (fullname, email, password, mobile, aadhaarno, panno, degree, special, experience, peradd, curadd) values("+fname+","+email+","+pass+","+mobileno+","+aadhaarno+","+panno+","+degree+","+speciality+","+experience+","+pera+","+cura+")";
        out.print(q);
        
        st.executeUpdate(q);
        
        st.close();
        con.close();
        response.sendRedirect("admindashboard.jsp");
    }
    catch( Exception e)
    {
        out.println(e);
    }
%>


