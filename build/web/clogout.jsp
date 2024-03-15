<%-- 
    Document   : logout
    Created on : 17 Feb, 2023, 11:07:51 PM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    session.invalidate();
    response.sendRedirect("Custlogin.html");
%>