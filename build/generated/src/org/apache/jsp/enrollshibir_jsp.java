package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class enrollshibir_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 ResultSet rs=null;
    ResultSet rs2=null;

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
      			"error.jsp", true, 8192, true);
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
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Yoga | Enroll Shibir</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("                  \n");
      out.write("    <!-- FONTS -->\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\"><link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin><link href=\"https://fonts.googleapis.com/css2?family=Montserrat:wght@100;400;900&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\"><link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin><link href=\"https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@200;300;400;500&family=Titillium+Web:wght@200;400;700&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\"><link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin><link href=\"https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;600&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\"><link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin><link href=\"https://fonts.googleapis.com/css2?family=Saira:wght@200;300;400;500&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\"><link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin><link href=\"https://fonts.googleapis.com/css2?family=Abel&display=swap\" rel=\"stylesheet\">\n");
      out.write("\n");
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
      out.write("    background-repeat: no-repeat;\n");
      out.write("    background-size: cover;\n");
      out.write("    font-size: 1em;\n");
      out.write("    background-image: url(enroll2.jpg);\n");
      out.write("}\n");
      out.write("        h1{\n");
      out.write("            font-family: josefin sans;\n");
      out.write("            font-size: 4em;\n");
      out.write("            text-align: center;\n");
      out.write("            margin: 0.9em auto 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("h2{\n");
      out.write("    font-family: titillium web;\n");
      out.write("    font-size: 2.5em; \n");
      out.write("    font-weight: 400;\n");
      out.write("    margin: 1em auto;\n");
      out.write("    text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write("span{\n");
      out.write("    font-size: 1.3em;\n");
      out.write("    margin-bottom: 15px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("input[readonly].i1{\n");
      out.write("    background-color: #fff;\n");
      out.write("    font-size: 1.2em;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".col-lg-1{\n");
      out.write("    padding: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("img{\n");
      out.write("    width: 80%;\n");
      out.write("    margin-top: 10%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".btn{\n");
      out.write("    font-size: 1.2em;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/*.btn:hover{\n");
      out.write("    transform: scale(105%);\n");
      out.write("    transition: 0.3s;\n");
      out.write("}*/\n");
      out.write("    </style>\n");
      out.write("  \n");
      out.write("    </head>\n");

    int id = Integer.parseInt(request.getParameter("id"));
try
{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                    rs = st.executeQuery("select * from yogashibir where sid="+id+"");
                    rs.next();
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }

      out.write('\n');
      out.write('\n');

    String clientname = "'"+(String)session.getAttribute("cname")+"'";
    
try
{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                    rs2 = st.executeQuery("select full_name, mno  from client where email="+clientname+"");
                    rs2.next();
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }

      out.write("\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        \n");
      out.write("        <h1 class=\"txthead text-primary\" align=\"center\">Enroll For Shibir</h1><br><br>\n");
      out.write("  <form class=\"form-horizontal\" action=\"enrollment.jsp\" method=\"post\">\n");
      out.write("      \n");
      out.write("<section id='sec'>\n");
      out.write("      <div class=\"row\">\n");
      out.write("          <div class=\"col-lg-1\"></div>\n");
      out.write("\t\t<div class=\"col-lg-2\">\n");
      out.write("                    <span>Shibir Id : </span><input type=\"text\" class=\"form-control i1\"  name=\"t1\" value=\"");
      out.print(rs.getInt(1));
      out.write("\" disabled readonly>\n");
      out.write("\t\t</div>\n");
      out.write("                <div class=\"col-lg-2\">\n");
      out.write("                    <span>Shibir Name : </span><input type=\"text\" class=\"form-control i1\" name=\"t2\" value=\"");
      out.print(rs.getString(2));
      out.write("\" readonly>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-2\">\n");
      out.write("                    <span>City : </span><input type=\"text\" class=\"form-control i1\" name=\"t3\" value=\"");
      out.print(rs.getString(3));
      out.write("\" readonly>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-4\">\n");
      out.write("                    <span>Address : </span><input type=\"text\" class=\"form-control i1\" name=\"t4\" value=\"");
      out.print(rs.getString(4));
      out.write("\" readonly>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-1\"></div>\n");
      out.write("      </div>\n");
      out.write("                <br><br>\n");
      out.write("          <div class=\"row\">      \n");
      out.write("                <div class=\"col-lg-1\"></div>\n");
      out.write("                <div class=\"col-lg-2\">\n");
      out.write("                    <span>Start Date : </span><input type=\"text\" class=\"form-control i1\" name=\"t5\" value=\"");
      out.print(rs.getString(5));
      out.write("\" readonly>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-2\">\n");
      out.write("                    <span>End Date : </span><input type=\"text\" class=\"form-control i1\" name=\"t6\" value=\"");
      out.print(rs.getString(6));
      out.write("\" readonly>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-2\">\n");
      out.write("                    <span>Fees : </span><input type=\"text\" class=\"form-control i1\" name=\"t7\" value=\"");
      out.print(rs.getInt(7));
      out.write("\" readonly>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-4\">\n");
      out.write("                    <span>Client Name : </span><input type=\"text\" class=\"form-control i1\" name=\"t8\" value=\"");
      out.print(rs2.getString(1));
      out.write("\" readonly>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-1\"></div>\n");
      out.write("                \n");
      out.write("              </div>\n");
      out.write("                <br><br>\n");
      out.write("                \n");
      out.write("          <div class=\"row\">  \n");
      out.write("                <div class=\"col-lg-1\"></div>\n");
      out.write("                <div class=\"col-lg-2\">\n");
      out.write("                    <span>Mobile No :</span><input type=\"text\" class=\"form-control i1\" name=\"t9\" value=\"");
      out.print(rs2.getString(2));
      out.write("\" readonly>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-2\">\n");
      out.write("                    <span>Applied Date : </span><input type=\"text\" class=\"form-control i1\" name=\"t12\" value=\"");

                      java.util.Date d=new java.util.Date();
                      int dd=d.getDate();
                      
                      int mm=d.getMonth()+1;
                      int yy=d.getYear()-100;
                      String yyyy="20"+yy;
                      String dated=yyyy+"-"+mm+"-"+dd;
                      out.println(dated);
                      
      out.write("\" readonly>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("               \n");
      out.write("                <div class=\"col-lg-2\">\n");
      out.write("                    <span>Payment Method : </span>\n");
      out.write("                    <select name=\"t10\" class=\"form-control\" >\n");
      out.write("    <option value=\"GPay\">\n");
      out.write("\tGPay\n");
      out.write("    </option>\n");
      out.write("    <option value=\"PhonePay\">\n");
      out.write("\tPhonePay\n");
      out.write("    </option>\n");
      out.write("    <option value=\"Paytm\">\n");
      out.write("\tPaytm\n");
      out.write("    </option>\n");
      out.write("</select>\n");
      out.write("                </div>\n");
      out.write("                 <div class=\"col-lg-2\">\n");
      out.write("                    <span>Transaction Id : </span><input type=\"text\" class=\"form-control\" name=\"t11\" placeholder=\"Enter Transaction Id\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-2\">\n");
      out.write("                    <img src=\"qrimg.jpg\">\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("      </div>\n");
      out.write("                      \n");
      out.write("               <div class=\"row\">       \n");
      out.write("                      <div align=\"center\"><input type=\"submit\" value=\"submit\" class=\"btn btn-light\">\n");
      out.write("\t\t\t&nbsp;&nbsp;&nbsp;\n");
      out.write("\t\t\t<a href=\"clientdashboard.jsp\" class=\"btn btn-dark\">Dashboard</a>\n");
      out.write("                  </div>  \n");
      out.write("\t</div>\n");
      out.write("      </section>\n");
      out.write("\n");
      out.write("<!--\n");
      out.write("\n");
      out.write("Payment Method : <select name=\"t10\" class=\"form-control\" value=\"Select payment Type\">\n");
      out.write("    <option value=\"GPay\">\n");
      out.write("\tGPay\n");
      out.write("    </option>\n");
      out.write("    <option value=\"PhonePay\">\n");
      out.write("\tPhonePay\n");
      out.write("    </option>\n");
      out.write("    <option value=\"Paytm\">\n");
      out.write("\tPaytm\n");
      out.write("    </option>\n");
      out.write("</select>\n");
      out.write("<br><br>\n");
      out.write("Transaction Id : <input type=\"text\" class=\"form-control\" name=\"t11\" placeholder=\"Enter Transaction Id\">-->\n");
      out.write("\n");
      out.write("\n");
      out.write("<br><br>\n");
      out.write("    \n");
      out.write("  </form>\n");
      out.write("\n");
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
