package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class consultancyreport_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Yoga | Videos</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <table class=\"table table-stripped\">\n");
      out.write("            <tr class=\"text-primary\">\n");
      out.write("                <th>Consultancy ID</th>\n");
      out.write("                <th>Client ID</th>\n");
      out.write("                <th>Client Name</th>\n");
      out.write("                <th>Symptom</th>\n");
      out.write("                <th>Applied Date</th>\n");
      out.write("                <th>Consulted Date</th>\n");
      out.write("                <th>Fees</th>\n");
      out.write("                <th>Payment</th>\n");
      out.write("                <th>Doctor Name</th>\n");
      out.write("                <th>Prescription</th>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            ");

                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from feedback");
                    
                    while(rs.next())
                    {
                        out.println("<tr>");
                        out.println("<td>"+rs.getInt(1));
                        out.println("<td>"+rs.getInt(2));
                        out.println("<td>"+rs.getString(3));
                        out.println("<td>"+rs.getString(4));
                        out.println("<td>"+rs.getString(5));
                        out.println("<td>"+rs.getInt(6));
                        out.println("<td>"+rs.getString(7));
                        out.println("<td>"+rs.getString(8));
                        out.println("<td>"+rs.getString(9));
                        out.println("<td>"+rs.getString(10));
                    }
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }
            
      out.write("\n");
      out.write("            \n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
