<%-- 
    Document   : jspEX
    Created on : 16 Oct, 2022, 12:30:04 PM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int a = Integer.parseInt(request.getParameter("txt1"));
    String b = request.getParameter("txt2");
    int c = Integer.parseInt(request.getParameter("txt3"));
    out.println(a+"&nbsp;<br>"+b+"&nbsp;<br>"+c);
%>
<!DOCTYPE html>
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>-->
