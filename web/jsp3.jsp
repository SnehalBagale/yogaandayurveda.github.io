<%-- 
    Document   : jsp3
    Created on : 16 Oct, 2022, 11:50:13 AM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int a, b, c;
    a=10;
    b=20;
%>
<%
    c=a+b;
    out.println("<br>c = "+c);
%>

<%!
    int cube (int x)
    {
        return ( x * x * x);
    }
%>
<%
    c = cube(3);
    out.println("<br>"+c);
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    </body>
</html>
