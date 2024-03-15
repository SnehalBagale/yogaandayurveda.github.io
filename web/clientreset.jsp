<%-- 
    Document   : clientloginvalidate
    Created on : 11 Dec, 2022, 10:13:55 AM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    try 
    {
        String u = request.getParameter("t1");
        String p = request.getParameter("t2");
        String newpass = request.getParameter("t3");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya", "root", "");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select email, ano, cflag from client where email='"+u+"'");
        //out.println(rs);
        int flag = 0;
        
        if(rs.next())
        {
            String u2 = rs.getString(1);
            String p2 = rs.getString(2);
            int cf = rs.getInt(3);
            
            if(u.equals(u2) && p.equals(p2) && cf==1)
            {
                flag = 1;
            }
        }
        
        if(flag==1)
        {   
        

        String q = "update client set password='"+newpass+"' where email='"+u+"'";
//        out.print(q);
        
        st.executeUpdate(q);
        
        st.close();
        con.close();

        out.println("<script>alert('Password Updated Successfully..!!');</script>");
            request.getRequestDispatcher("Custlogin.html").include(request, response);
//            response.sendRedirect("clientforgot.jsp");
        }
        
        else
        {
            out.println("<script>alert('Enter Valid Credentials..!!');</script>");
            request.getRequestDispatcher("clientforgot.jsp").include(request, response);
//            response.sendRedirect("clientforgot.jsp");
        }
        
    }

    catch (Exception e)
    {
        out.println(e);
    }

%>