<%-- 
    Document   : enrollment
    Created on : 30 Jan, 2023, 8:52:10 PM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    try
    {
        int pcid = Integer.parseInt(request.getParameter("t1"));
        String pres = "'" + request.getParameter("t6")+"'";
        String cdate = "'" + request.getParameter("t5")+"'";
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
        Statement st = con.createStatement();
        String q = "insert into prescription(cid, pre, cdate) values("+pcid+","+pres+","+cdate+")";
        out.print(q);
        st.executeUpdate(q);
        int idd=(Integer)session.getAttribute("cid");
        out.println(idd);
        String qq="update consultation set cflag=1 where  cid="+idd+" ";
        Statement st1 = con.createStatement();
        st1.executeUpdate(qq);
        out.println(qq);
        st.close();
        con.close();
        response.sendRedirect("drdashboard.jsp");
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>

