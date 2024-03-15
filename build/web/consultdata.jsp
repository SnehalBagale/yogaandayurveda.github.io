<%-- 
    Document   : addremedy
    Created on : 23 Jan, 2023, 2:00:25 PM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    try
    {
        int ccid = Integer.parseInt(request.getParameter("t0"));
        String name = "'" + request.getParameter("t1")+"'";
        String symp = "'" + request.getParameter("t2")+"'";
        String d1 = "'" + request.getParameter("t3")+"'";
        String fee = "'" + request.getParameter("t4")+"'";
        String pay = "'" + request.getParameter("t5")+"'";
        String td = "'" + request.getParameter("t6")+"'";
        String dname = "'" + request.getParameter("t7")+"'";
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
        Statement st = con.createStatement();
        String q = "insert into consultation(ccid, cname, symptom, adate, fees, payment, tid, dname,cflag) values("+ccid+","+name+","+symp+","+d1+","+fee+","+pay+","+td+","+dname+",0)";
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
