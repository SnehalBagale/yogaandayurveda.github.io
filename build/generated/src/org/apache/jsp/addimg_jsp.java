package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class addimg_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Yoga | Add Remedy</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("                       \n");
      out.write("    <!-- FONTS -->\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\"><link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin><link href=\"https://fonts.googleapis.com/css2?family=Montserrat:wght@100;400;900&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\"><link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin><link href=\"https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@200;300;400;500&family=Titillium+Web:wght@200;400;700&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\"><link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin><link href=\"https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;600&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\"><link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin><link href=\"https://fonts.googleapis.com/css2?family=Saira:wght@200;300;400;500&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\"><link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin><link href=\"https://fonts.googleapis.com/css2?family=Abel&display=swap\" rel=\"stylesheet\">\n");
      out.write("    \n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500&family=Ubuntu:wght@300;400&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100;200;300;400&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Cinzel:wght@400;500;600&family=Cormorant+Garamond:wght@300;400;500&family=Josefin+Sans:wght@100;200;300;400&family=Montserrat:wght@100;300;400;500&family=Poppins:ital,wght@0,100;0,500;0,600;1,200;1,300;1,400&family=Raleway:wght@100;300;400;500;600&family=Roboto:wght@100;300;400;500;700&family=Rubik:wght@300;400;500&family=Tangerine:wght@400;700&family=Ubuntu:wght@300;400;500&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,500;1,500&display=swap\" rel=\"stylesheet\">\n");
      out.write("        \n");
      out.write("    <!-- BOOTSTRAP -->\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("\n");
      out.write("    <!-- ICONS -->\n");
      out.write("    <script src=\"https://kit.fontawesome.com/ae6fe48316.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("  \n");
      out.write("    <style>\n");
      out.write("        *{\n");
      out.write("    margin: 0;\n");
      out.write("    padding: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("body{\n");
      out.write("    /*background-color: #cdcdcd;*/\n");
      out.write("     background-image: url(Remedy2.jpg); \n");
      out.write("    background-repeat: no-repeat;\n");
      out.write("    background-size: cover;\n");
      out.write("}\n");
      out.write("        h1{\n");
      out.write("            font-family: josefin sans;\n");
      out.write("            font-size: 4em;\n");
      out.write("            text-align: center;\n");
      out.write("            margin: 0.9em auto;\n");
      out.write("            color: #373737;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#sec{\n");
      out.write("    margin: auto 10%;\n");
      out.write("}\n");
      out.write("p{\n");
      out.write("    color: #373737;\n");
      out.write("    font-weight: 500;\n");
      out.write("    font-family: Ubuntu;\n");
      out.write("    font-size: 2em;\n");
      out.write("}\n");
      out.write("\n");
      out.write("::placeholder{\n");
      out.write("    font-family: Montserrat;\n");
      out.write("}\n");
      out.write("\n");
      out.write("img{\n");
      out.write("    width:100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".btn{\n");
      out.write("    font-family: Montserrat;\n");
      out.write("    font-size: 1.2em;\n");
      out.write("    font-weight: 500;\n");
      out.write("}\n");
      out.write("    </style>\n");
      out.write("    \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--<div>Add Shibir</div>-->\n");
      out.write("        \n");
      out.write("        <h1>Add Remedy</h1>\n");
      out.write("  <form class=\"form-horizontal\" action=\"addimg.jsp\" method=\"post\">\n");
      out.write("<!--\n");
      out.write("Enter Disease : <input type=\"text\" class=\"\" placeholder=\"Enter Disease Name\" name=\"t1\">\n");
      out.write("Enter Remedy : <textarea class=\"\" placeholder=\"Enter Remedy\" name=\"t2\"></textarea>\n");
      out.write("Enter Remedy Link : <textarea class=\"\" placeholder=\"Enter Remedy Link\" name=\"t3\"></textarea><br><br>-->\n");
      out.write("\n");
      out.write("<section id='sec'>\n");
      out.write("      <div class=\"row\">\n");
      out.write("\t\t<div class=\"col-lg-4\">\n");
      out.write("                   \n");
      out.write("                        <input type=\"number\" class=\"form-control\" placeholder=\"Enter id\" name=\"t1\">\n");
      out.write("                        \n");
      out.write("                        <input type=\"text\" class=\"form-control\" placeholder=\"Enter img name\" name=\"t2\">\n");
      out.write("                        \n");
      out.write("                        <input type=\"file\" class=\"form-control\" name=\"t3\">\n");
      out.write("                        \n");
      out.write("\t\t</div>\n");
      out.write("                </div>\t\t\n");
      out.write("\t</div>\n");
      out.write("      </section>\n");
      out.write("              \n");
      out.write("  </form>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    try
    {
        String id = "'" + request.getParameter("t1")+"'";
        String name = "'" + request.getParameter("t2")+"'";
        String img = "'" + request.getParameter("t3")+"'";
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
        Statement st = con.createStatement();
        String q = "insert into images(iid, name, image) values("+id+","+name+","+img+")";
        out.print(q);
        
        st.executeUpdate(q);
        
        st.close();
        con.close();
        response.sendRedirect("admindashboard.jsp");
    }
    catch( Exception e)
    {
        out.println(e);
    }

      out.write('\n');
      out.write('\n');
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
