package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class symptomwisereport_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        \n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body> <h2><p align=\"center\"><font color=\"red\">Symptom Wise Report</p></h2>\n");
      out.write("        <form action=\"symptomwisereport.jsp\">\n");
      out.write("            \n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-4\">\n");
      out.write("                    Choose Symptom Name:\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-2\"></div>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                <div class=\"col-lg-4\">\n");
      out.write("                    ");

                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery("select distinct(symptom) from consultation");
                        out.println("<select name=c class=form-control>");
                        while(rs.next())
                        {
                            out.println("<option >"+rs.getString(1)+"</option>");
                        }
                        out.println("</select>");
        
                    
      out.write("\n");
      out.write("                    </div>\n");
      out.write("       \n");
      out.write("                    <div class=\"col-lg-2\"></div>\n");
      out.write("            \n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            </div><br><br>\n");
      out.write("                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"submit\" class=\"btn btn-primary\" value=\"submit\">\n");
      out.write("        </form>\n");
      out.write("        <table class=\"table table-striped\">\n");
      out.write("            <tr><th>Consultation Id\n");
      out.write("                <th>Client Name\n");
      out.write("                <th>Symptoms\n");
      out.write("                <th>Consultation applied Date\n");
      out.write("                <th>Date of Consultation\n");
      out.write("                <th>Fees\n");
      out.write("                <th>Mode of Payment\n");
      out.write("                <th>Transaction ID \n");
      out.write("                <th>DoctorName    \n");
      out.write("                <th>Prescription\n");
      out.write("                <th>Status</tr>\n");
      out.write("  ");

  try
    {
        Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
        Statement st2=con2.createStatement();
        String aa="'"+request.getParameter("c")+"'";
        
        String q="select consultation.cid, consultation.cname, consultation.symptom, consultation.adate, prescription.cdate, consultation.fees, consultation.payment, consultation.tid, consultation.dname, prescription.pre ,consultation.cflag from consultation, prescription WHERE consultation.cid=prescription.cid and symptom="+aa+"";
        
        ResultSet rs2=st2.executeQuery(q);
        int amt=0;
        while(rs2.next())
        {
          out.println("<tr>");
          out.println("<td>"+rs2.getInt(1));
          out.println("<td>"+rs2.getString(2));
          out.println("<td>"+rs2.getString(3));
          out.println("<td>"+rs2.getString(4));
          out.println("<td>"+rs2.getString(5));
          int pp=rs2.getInt(6);
          amt=amt+pp;
          out.println("<td>"+pp);
          out.println("<td>"+rs2.getString(7));
          out.println("<td>"+rs2.getString(8));
          out.println("<td>"+rs2.getString(9));
          out.println("<td>"+rs2.getString(10));
         // out.println("<td>"+rs2.getString(7));
          int p=rs2.getInt(11);
          if(p==0)
          {
              out.println("<td>Pending");
          }
          else
          {
               out.println("<td>Consulted");
          }
          
          
          
          
        }
        rs2.close();
        st2.close();
        con2.close();
        out.print("<br><br><br><br><font color=red><table  class=table table-striped><tr><td><font color=red>TotalCollection&nbsp;Rs/-:<td><font color=red> "+amt+"</tr></table>");
        
    }catch(Exception e){
        out.println(e);
    }

  
  
  
      out.write("\n");
      out.write("        </table>\n");
      out.write("        <p align=\"center\"><a href=\"admindashboard.jsp\" class=\"btn btn-primary\">Dashboard</a></p>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
