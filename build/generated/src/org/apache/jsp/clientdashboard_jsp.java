package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class clientdashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Yoga | Client Dashboard</title>\n");
      out.write("        \n");
      out.write("        <!-- FONTS -->\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\"><link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin><link href=\"https://fonts.googleapis.com/css2?family=Montserrat:wght@100;400;900&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\"><link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin><link href=\"https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@200;300;400;500&family=Titillium+Web:wght@200;400;700&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\"><link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin><link href=\"https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;600&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\"><link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin><link href=\"https://fonts.googleapis.com/css2?family=Saira:wght@200;300;400;500&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\"><link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin><link href=\"https://fonts.googleapis.com/css2?family=Abel&display=swap\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500&family=Ubuntu:wght@300;400&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100;200;300;400&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Cinzel:wght@400;500;600&family=Cormorant+Garamond:wght@300;400;500&family=Josefin+Sans:wght@100;200;300;400&family=Montserrat:wght@100;300;400;500&family=Poppins:ital,wght@0,100;0,500;0,600;1,200;1,300;1,400&family=Raleway:wght@100;300;400;500;600&family=Roboto:wght@100;300;400;500;700&family=Rubik:wght@300;400;500&family=Tangerine:wght@400;700&family=Ubuntu:wght@300;400;500&display=swap\" rel=\"stylesheet\">\n");
      out.write("    \n");
      out.write("    <!-- BOOTSTRAP -->\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("\n");
      out.write("    <!-- ICONS -->\n");
      out.write("    <script src=\"https://kit.fontawesome.com/ae6fe48316.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("        *{\n");
      out.write("    margin: 0;\n");
      out.write("    padding: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("body{\n");
      out.write("    background-color: #C3F8FF;\n");
      out.write("    /* background-image: url(/bg1.jpg); */\n");
      out.write("    background-repeat: no-repeat;\n");
      out.write("    background-size: cover;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("#details {\n");
      out.write("    /* background: url(\"/bg1.jpg\"); */\n");
      out.write("    background-size: 1700px 1200px;\n");
      out.write("    background-repeat: no-repeat;\n");
      out.write("    padding-bottom: 4em;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("#reports {\n");
      out.write("    /* background-color: #EFF5F5; */\n");
      out.write("    /* background: url(\"/bg3.jpg\"); */\n");
      out.write("    background-size: 1700px 2000px;\n");
      out.write("    background-repeat: no-repeat;\n");
      out.write("    padding-bottom: 4em;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#feedbacks {\n");
      out.write("    /* background: url(\"/bg2.jpg\"); */\n");
      out.write("    background-size: 1700px 1200px;\n");
      out.write("    background-repeat: no-repeat;\n");
      out.write("    padding-bottom: 4em;\n");
      out.write("  }\n");
      out.write("\n");
      out.write(".row{\n");
      out.write("   align-items:center;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".d-flex{\n");
      out.write("    justify-content: center;\n");
      out.write("    text-align:left;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".box:hover{\n");
      out.write("    box-shadow:  0 1px 15px 3px rgba(0, 0, 0, 0.329);\n");
      out.write("    transition: 0.3s ease;\n");
      out.write("    transform: scale(105%);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".box, .card-img-top{\n");
      out.write("    border-radius: 25px;\n");
      out.write("    padding: 5%;\n");
      out.write("    background-color: #fff;\n");
      out.write("    margin: 5% auto;\n");
      out.write("    -webkit-transition: all 0.3s ease;\n");
      out.write("    -moz-transition: all 0.3s ease;\n");
      out.write("    -o-transition: all 0.3s ease;\n");
      out.write("    -ms-transition: all 0.3s ease;\n");
      out.write("    transition: all 0.3s ease;\n");
      out.write("}\n");
      out.write(".card-img-top{\n");
      out.write("    margin: 1% auto;\n");
      out.write("}\n");
      out.write(".ico{\n");
      out.write("    width:5%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".card{\n");
      out.write("\n");
      out.write("    border: 0px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("h1{\n");
      out.write("    font-family: josefin sans;\n");
      out.write("    font-size: 3.5em;\n");
      out.write("    text-align: center;\n");
      out.write("    margin: 0.9em auto 0.1em;\n");
      out.write("    color: #0d6efd;\n");
      out.write("}\n");
      out.write("\n");
      out.write("h2{\n");
      out.write("    font-family: Montserrat,titillium web;\n");
      out.write("    font-size: 2em;\n");
      out.write("    font-weight: 400;\n");
      out.write("    margin: 0 1em;\n");
      out.write("    padding: 1em 0;\n");
      out.write("    text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write("h5{\n");
      out.write("    font-family: Poppins,Raleway,Roboto,Rubik,Tangerine,Ubuntu;\n");
      out.write("    font-weight: 500;\n");
      out.write("    font-size: 2em;   \n");
      out.write("    padding: 2%;\n");
      out.write("    border-radius: 10px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("p{\n");
      out.write("    font-family: Ubuntu;;\n");
      out.write("    font-weight: 400;\n");
      out.write("    font-size: 0.9em;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".bigbtn{\n");
      out.write("    width: 100%;\n");
      out.write("    background-color: #00e1ff;\n");
      out.write("    border: none;\n");
      out.write("    transition: 0.3s;\n");
      out.write("    font-family: Rubik,Tangerine,Ubuntu;\n");
      out.write("    /*font-weight: 600;*/\n");
      out.write("    font-size: 1.5em;\n");
      out.write("    color: #000;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".bigbtn:hover{\n");
      out.write("    transition: 0.3s ease;\n");
      out.write("    background-color: #009EFF; \n");
      out.write("    /* transform: scaleY(105%); */\n");
      out.write("}\n");
      out.write("\n");
      out.write(".sbtn{\n");
      out.write("    width: 10%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".card-img-top:hover{\n");
      out.write("    transform: scale(105%);\n");
      out.write("    transition: 0.3s;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#topbtn {\n");
      out.write("    /*display: none; Hidden by default */\n");
      out.write("    position: fixed; /* Fixed/sticky position */\n");
      out.write("    bottom: 20px; /* Place the button at the bottom of the page */\n");
      out.write("    right: 30px; /* Place the button 30px from the right */\n");
      out.write("    z-index: 99; /* Make sure it does not overlap */\n");
      out.write("    border: none; /* Remove borders */\n");
      out.write("    outline: none; /* Remove outline */\n");
      out.write("    background-color: #fff; /* Set a background color */\n");
      out.write("    color: #000; /* Text color */\n");
      out.write("    cursor: pointer; /* Add a mouse pointer on hover */\n");
      out.write("    padding: 15px; /* Some padding */\n");
      out.write("    border-radius: 10px; /* Rounded corners */\n");
      out.write("    font-size: 18px; /* Increase font size */\n");
      out.write("\n");
      out.write("\n");
      out.write("    /*     \n");
      out.write("        FOR EASE IN AND EASE OUT ON HOVER LEAVE\n");
      out.write("    */\n");
      out.write("\n");
      out.write("    -webkit-transition: all 0.3s ease;\n");
      out.write("    -moz-transition: all 0.3s ease;\n");
      out.write("    -o-transition: all 0.3s ease;\n");
      out.write("    -ms-transition: all 0.3s ease;\n");
      out.write("    transition: all 0.3s ease;\n");
      out.write("  }\n");
      out.write("  \n");
      out.write("  #topbtn:hover {\n");
      out.write("    background-color: #000; /* Add a dark-grey background on hover */\n");
      out.write("    color: #fff;\n");
      out.write("  }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--<h1>Hello World!</h1>-->\n");
      out.write("        <p style=\"font-family: batmanforeveralterate\">\n");
      out.write("        ");

            
            String p="'"+(String)session.getAttribute("cname")+"'";
            
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
//                    out.println(p);          
                    ResultSet rs = st.executeQuery("select full_name from client where email="+p+"");
//                    rs.next();
                    while(rs.next())
                    {
                        String pp = rs.getString(1);
                        out.println("<h1>Hello..!   &nbsp;"+pp+"</h1>");
                    }
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }
   
            
            
            
        
      out.write("\n");
      out.write("        </p>\n");
      out.write("        \n");
      out.write("        <section id=\"details\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("      \n");
      out.write("    <div class=\"container-f\">\n");
      out.write("\n");
      out.write("          <div class=\"row\">\n");
      out.write("              <h2>\"Yoga is a skill in action\" - The Bhagavad Gita</h2> \n");
      out.write("            <div class=\"col-lg-4 d-flex\">\n");
      out.write("              <div class=\"box\">\n");
      out.write("                <div class=\"card\" style=\"width: 20rem;\">\n");
      out.write("                <img src=\"shibir.jpg\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                  <h5 class=\"card-title\">Yoga Shibir</h5>\n");
      out.write("                  <p class=\"card-text\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>\n");
      out.write("                  <a href=\"clientenrollshibir.jsp\" class=\"bigbtn btn btn-primary\">Enroll Shibir</a><br><br>\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-lg-4 d-flex\">\n");
      out.write("              <div class=\"box\">\n");
      out.write("              <div class=\"card\" style=\"width: 20rem;\">\n");
      out.write("                <img src=\"doctorfeedback.jpg\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                  <h5 class=\"card-title\">Doctor's Consultancy</h5>\n");
      out.write("                  <p class=\"card-text\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>\n");
      out.write("                <a href=\"consult.jsp\" class=\"bigbtn btn btn-primary\">Apply Consultancy</a><br><br>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            \n");
      out.write("            <div class=\"col-lg-4 d-flex\">\n");
      out.write("              <div class=\"box\">\n");
      out.write("              <div class=\"card\" style=\"width: 20rem;\">\n");
      out.write("                <img src=\"yogahor.jpg\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                  <h5 class=\"card-title\">Yoga Video</h5>\n");
      out.write("                  <p class=\"card-text\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>\n");
      out.write("                  <a href=\"clientvideo.jsp\" class=\"bigbtn btn btn-primary\">View Video</a><br><br>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("          \n");
      out.write("\n");
      out.write("          <div class=\"col-lg-4 d-flex\">\n");
      out.write("            <div class=\"box\">\n");
      out.write("            <div class=\"card\" style=\"width: 20rem;\">\n");
      out.write("              <img src=\"remedy.jpg\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("              <div class=\"card-body\">\n");
      out.write("                <h5 class=\"card-title\">Home Remedy</h5>\n");
      out.write("                <p class=\"card-text\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>\n");
      out.write("               <a href=\"clientremedy.jsp\" class=\"bigbtn btn btn-primary\">View Remedy</a><br><br>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("          \n");
      out.write("      <!-- <div class=\"row\"> -->\n");
      out.write("        <div class=\"col-lg-4 d-flex\">\n");
      out.write("          <div class=\"box\">\n");
      out.write("            <div class=\"card\" style=\"width: 20rem;\">\n");
      out.write("            <img src=\"doctor.jpg\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("            <div class=\"card-body\">\n");
      out.write("              <h5 class=\"card-title\">Know Our Doctors</h5>\n");
      out.write("              <p class=\"card-text\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>\n");
      out.write("              <a href=\"doctordetails.jsp\" class=\"bigbtn btn btn-primary\">View Dr Details</a><br><br>\n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"col-lg-4 d-flex\">\n");
      out.write("          <div class=\"box\">\n");
      out.write("          <div class=\"card\" style=\"width: 20rem;\">\n");
      out.write("            <img src=\"clientfeedback.jpg\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("            <div class=\"card-body\">\n");
      out.write("              <h5 class=\"card-title\">Customer Feedback</h5>\n");
      out.write("              <p class=\"card-text\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>\n");
      out.write("              <a href=\"feedback.jsp\" class=\"bigbtn btn btn-primary\">Give Feedback</a>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("  </div>\n");
      out.write("</section>\n");
      out.write("        \n");
      out.write("        <!--<a href=\"clientenrollshibir.jsp\" class=\"btn btn-primary\">Enroll Shibir</a><br><br>-->\n");
      out.write("        <!--<a href=\"consult.jsp\" class=\"btn btn-primary\">Apply Consultancy</a><br><br>-->\n");
      out.write("        <!--<a href=\"clientvideo.jsp\" class=\"btn btn-primary\">View Video</a><br><br>-->\n");
      out.write("        <!--<a href=\"clientremedy.jsp\" class=\"btn btn-primary\">View Remedy</a><br><br>-->\n");
      out.write("        <!--<a href=\"doctordetails.jsp\" class=\"btn btn-primary\">View Dr Details</a><br><br>-->\n");
      out.write("        <!--<a href=\"feedback.jsp\" class=\"btn btn-primary\">Customer Feedback</a>-->\n");
      out.write("        <a href=\"clientprofile.jsp\" class=\"bigbtn btn btn-primary\">Your Profile</a><br><br>\n");
      out.write("        <a href=\"clogout.jsp\" class=\"bigbtn btn btn-primary\">Logout</a>\n");
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
