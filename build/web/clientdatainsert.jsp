
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
        String paytype = "'" + request.getParameter("txtpayment")+"'";
        String transactionid = "'" + request.getParameter("txttransaction")+"'";
        int payamount = Integer.parseInt(request.getParameter("txtpayamount"));
        String pera = "'" + request.getParameter("txtpa")+"'";
        String cura = "'" + request.getParameter("txtca")+"'";
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
        Statement st = con.createStatement();
        String q = "insert into client (full_name, email, password, mno, ano, panno, ptype, tid, payamount, permananta, currenta, cflag) values("+fname+","+email+","+pass+","+mobileno+","+aadhaarno+","+panno+","+paytype+","+transactionid+","+payamount+","+pera+","+cura+",0)";
        out.print(q);
        
        st.executeUpdate(q);
        
        st.close();
        con.close();
        response.sendRedirect("Custlogin.html");
    }
    catch( Exception e)
    {
        out.println(e);
    }
%>

