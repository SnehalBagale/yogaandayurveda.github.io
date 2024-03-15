<%-- 
    Document   : addremedy
    Created on : 23 Jan, 2023, 2:00:25 PM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    try
    {
        String funame = "'" + request.getParameter("t1")+"'";
        String fcname = "'" + request.getParameter("t2")+"'";
        String fmno = "'" + request.getParameter("t3")+"'";
        String fd = "'" + request.getParameter("t4")+"'";
        int fvid = Integer.parseInt(request.getParameter("t5"));
        int fcons = Integer.parseInt(request.getParameter("t6"));
        int fshibir = Integer.parseInt(request.getParameter("t7"));
        String fsuggest = "'" + request.getParameter("t8")+"'";
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
        Statement st = con.createStatement();
        String q = "insert into feedback(username, cname, mno, fbdate, fbvidrem, fbconsult, fbshibir, suggestion) values("+funame+","+fcname+","+fmno+","+fd+", "+fvid+","+fcons+","+fshibir+","+fsuggest+")";
        out.print(q);
        
        st.executeUpdate(q);
        
        st.close();
        con.close();
        response.sendRedirect("clientdashboard.jsp");
    }
    catch( Exception e)
    {
        out.println(e);
    }
%>
