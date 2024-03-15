
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                    int id2 = Integer.parseInt(request.getParameter("id"));
                    st.executeUpdate("delete from client where client_id="+id2+"");
                    st.close();
                    response.sendRedirect("admindeleteclient.jsp");
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }
            %>
