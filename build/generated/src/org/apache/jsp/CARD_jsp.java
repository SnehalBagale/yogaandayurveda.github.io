package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class CARD_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        \n");
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
      out.write("    background-color: #C3F8FF;\n");
      out.write("    background-image: url(clientvid.png); \n");
      out.write("    background-repeat: no-repeat;\n");
      out.write("    /*background-size: 100%;*/\n");
      out.write("}\n");
      out.write("        h1{\n");
      out.write("            font-family: josefin sans;\n");
      out.write("            font-size: 4em;\n");
      out.write("            text-align: center;\n");
      out.write("            margin: 0.9em auto;\n");
      out.write("            color: #0d6efd;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".table{\n");
      out.write("    width: 55%;\n");
      out.write("    margin-left: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".tbhead{\n");
      out.write("    font-family: Montserrat,titillium web;\n");
      out.write("    font-weight: 500;\n");
      out.write("    font-size: 1.6em;\n");
      out.write("    margin: 0 1em;\n");
      out.write("    padding: 1em 0;\n");
      out.write("    border-bottom: 2px solid grey;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".tdrow{\n");
      out.write("    font-family: ubuntu, comfortaa;\n");
      out.write("    font-weight: 400;\n");
      out.write("    font-size: 1.4em;\n");
      out.write("    border-bottom: 2px solid grey;\n");
      out.write("}\n");
      out.write("\n");
      out.write("a{\n");
      out.write("    color: blueviolet;\n");
      out.write("    text-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("a:hover{\n");
      out.write("    color: #0d6efd;\n");
      out.write("    text-decoration: underline;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".d-flex{\n");
      out.write("    margin-bottom: 20px;\n");
      out.write("    text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write("h5{\n");
      out.write("    margin: 5px 0;\n");
      out.write("    font-size: 30px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("p{\n");
      out.write("    margin: 5px 0;\n");
      out.write("    font-size: 20px;\n");
      out.write("}\n");
      out.write("    </style>\n");
      out.write("    \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Yoga Videos</h1>\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            \n");
      out.write("            ");

                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from yogavideo");
            
      out.write("\n");
      out.write("                      <div class=\"row\">\n");
      out.write("                ");

                    while(rs.next())
                    {
                        
      out.write("\n");
      out.write("          <div class=\"col-lg-3 d-flex\">\n");
      out.write("          <div class=\"box\">\n");
      out.write("          <div class=\"card\" style=\"width: 20rem;\">\n");
      out.write("            <div class=\"card-body\">\n");
      out.write("              <h5 class=\"card-title\">");
      out.print(rs.getString(2));
      out.write("</h5>\n");
      out.write("              <p class=\"card-text\">");
      out.print(rs.getString(3));
      out.write("</p>\n");
      out.write("              \n");
      out.write("              ");
String link = rs.getString(4);
      out.write("\n");
      out.write("              <a href=\"");
      out.print(link);
      out.write("\" class=\"bigbtn btn btn-primary\" target=\"_blank\">View Video</a>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("              ");

                  }
                  
      out.write("\n");
      out.write("                      </div>\n");
      out.write("                  ");

            }
                
                catch(Exception e)
                {
                    out.println(e);
                }
            
      out.write("\n");
      out.write("              \n");
      out.write("        </div><br>\n");
      out.write("            <div class=\"row\">       \n");
      out.write("                      <div align=\"center\"><a href=\"clientdashboard.jsp\" class=\"btn btn-dark\">Dashboard</a>\n");
      out.write("                  </div>  \n");
      out.write("\t</div>\n");
      out.write("            \n");
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
