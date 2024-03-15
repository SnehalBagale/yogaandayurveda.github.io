package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class feedback_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 ResultSet rs=null;

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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>TODO supply a title</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    ");

    String clientname = "'"+(String)session.getAttribute("cname")+"'";
    
try
{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                     rs = st.executeQuery("select email, full_name, mno  from client where email="+clientname+"");
                    rs.next();
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }

      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <!--<div>Add Shibir</div>-->\n");
      out.write("        \n");
      out.write("        <h1 class=\"txthead text-primary\"align=\"center\">Feedback</h1><br><br>\n");
      out.write("  <form class=\"form-horizontal\" action=\"givefeedback.jsp\" method=\"post\">\n");
      out.write("<!--    <div class=\"row\">\n");
      out.write("\n");
      out.write("      \t<div class=\"col-lg-5\">\n");
      out.write("      \t\t<h3>Username :</h3>\n");
      out.write("      \t</div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"row\">\n");
      out.write("      \t<div class=\"col-lg-4\">\n");
      out.write("      \t\t<input type=\"email\" class=\"form-control\" placeholder=\"Enter Username\" name=\"t1\">\n");
      out.write("      \t</div>\n");
      out.write("    </div><br><p id=\"a\" style=\"color:red\"></p><br>\n");
      out.write("\n");
      out.write("    <div class=\"row\">\n");
      out.write("\n");
      out.write("      \t\t<div class=\"col-lg-6\">\n");
      out.write("      \t\t<h3>Password :</h3>\n");
      out.write("      \t\t</div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"row\">\n");
      out.write("      \t<div class=\"col-lg-4\">\n");
      out.write("      \t\t<input type=\"password\" class=\"form-control\" placeholder=\"Enter Password\" name=\"t2\">\n");
      out.write("      \t</div>\n");
      out.write("    </div><br><p id=\"b\" style=\"color:red\"></p><br><br><br>\n");
      out.write("\n");
      out.write("    <div class=\"row\">\n");
      out.write("    \t<div class=\"col-lg-1\">\n");
      out.write("    \t</div>\n");
      out.write("      \t<div>\n");
      out.write("\t\t\t<input type=\"submit\" value=\"submit\" class=\"btn btn-primary\">\n");
      out.write("\t\t\t&nbsp;&nbsp;&nbsp;\n");
      out.write("\t\t\t<a href=\"body.html\" class=\"btn btn-danger\">Home</a>\n");
      out.write("\t</div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    <div class=\"form-group\">        \n");
      out.write("      <div class=\"col-sm-offset-2 col-sm-10\">\n");
      out.write("        \n");
      out.write("      </div>\n");
      out.write("    </div>-->\n");
      out.write("    \n");
      out.write("\n");
      out.write("<input type=\"text\" class=\"form-control\" name=\"t1\" value=\"");
      out.print(rs.getString(1));
      out.write("\" readonly>\n");
      out.write("<input type=\"text\" class=\"form-control\" name=\"t2\" value=\"");
      out.print(rs.getString(2));
      out.write("\" readonly>\n");
      out.write("<input type=\"text\" class=\"form-control\" name=\"t3\" value=\"");
      out.print(rs.getString(3));
      out.write("\" readonly>\n");
      out.write("Feedback Date : <input type=\"text\" class=\"form-control\" name=\"t4\" value=\"");

                      java.util.Date d=new java.util.Date();
                      int dd=d.getDate();
                      
                      int mm=d.getMonth()+1;
                      int yy=d.getYear()-100;
                      String yyyy="20"+yy;
                      String dated=yyyy+"-"+mm+"-"+dd;
                      out.println(dated);
                      
      out.write("\" readonly>\n");
      out.write("\n");
      out.write("Video/ Remedy Feedback<select name=\"t5\">\n");
      out.write("    <option value=\"1\">\n");
      out.write("\t1\n");
      out.write("    </option>\n");
      out.write("    <option value=\"2\">\n");
      out.write("\t2\n");
      out.write("    </option>\n");
      out.write("    <option value=\"3\">\n");
      out.write("\t3\n");
      out.write("    </option>\n");
      out.write("    <option value=\"4\">\n");
      out.write("\t4\n");
      out.write("    </option>\n");
      out.write("    <option value=\"5\">\n");
      out.write("\t5\n");
      out.write("    </option>\n");
      out.write("</select>\n");
      out.write("\n");
      out.write("Consult Feedback<select name=\"t6\">\n");
      out.write("    <option value=\"1\">\n");
      out.write("\t1\n");
      out.write("    </option>\n");
      out.write("    <option value=\"2\">\n");
      out.write("\t2\n");
      out.write("    </option>\n");
      out.write("    <option value=\"3\">\n");
      out.write("\t3\n");
      out.write("    </option>\n");
      out.write("    <option value=\"4\">\n");
      out.write("\t4\n");
      out.write("    </option>\n");
      out.write("    <option value=\"5\">\n");
      out.write("\t5\n");
      out.write("    </option>\n");
      out.write("</select>\n");
      out.write("Shibir Feedback<select name=\"t7\">\n");
      out.write("    <option value=\"1\">\n");
      out.write("\t1\n");
      out.write("    </option>\n");
      out.write("    <option value=\"2\">\n");
      out.write("\t2\n");
      out.write("    </option>\n");
      out.write("    <option value=\"3\">\n");
      out.write("\t3\n");
      out.write("    </option>\n");
      out.write("    <option value=\"4\">\n");
      out.write("\t4\n");
      out.write("    </option>\n");
      out.write("    <option value=\"5\">\n");
      out.write("\t5\n");
      out.write("    </option>\n");
      out.write("</select>\n");
      out.write("<input type=\"text\" class=\"form-control\" placeholder=\"Enter Suggestions\" name=\"t8\">\n");
      out.write("\n");
      out.write("<input type=\"submit\" value=\"submit\" class=\"btn btn-primary\">\n");
      out.write("\t\t\t&nbsp;&nbsp;&nbsp;\n");
      out.write("\t\t\t<a href=\"NEWHOME.html\" class=\"btn btn-danger\">Home</a>\n");
      out.write("                        \n");
      out.write("  </form>\n");
      out.write("\n");
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
