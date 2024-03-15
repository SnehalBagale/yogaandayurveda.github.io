package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class drreg_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<head>\n");
      out.write("\t<meta charset=\"utf-8\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t<title>Yoga - Customer Registration</title>\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("  <script type=\"text/javascript\">\n");
      out.write("  \tfunction validate()\n");
      out.write("  \t{\n");
      out.write("  \t\t/*NAME*/\n");
      out.write("  \t\tvar a=document.forms[0].elements[0].value;\n");
      out.write("  \t\tif(a==null || a==\"\")\n");
      out.write("  \t\t{\n");
      out.write("  \t\t\tdocument.getElementById(\"a\").innerHTML=\"Enter Full Name\";\n");
      out.write("\t\t\treturn false;\n");
      out.write("  \t\t}\n");
      out.write("\n");
      out.write("  \t\tif(!(isNaN(a)))\n");
      out.write("\t\t\t{\n");
      out.write("\t\t\t\tdocument.getElementById(\"a\").innerHTML=\"Enter Full Name in Characters\";\n");
      out.write("\t\t\t\treturn false;\n");
      out.write("\t\t\t}\n");
      out.write("\n");
      out.write("  \t\t/*Email*/\n");
      out.write("  \t\tvar b1=document.forms[0].elements[1].value;\n");
      out.write("  \t\tif(b1==null || b1==\"\")\n");
      out.write("  \t\t{\n");
      out.write("  \t\t\tdocument.getElementById(\"b1\").innerHTML=\"Enter Email\";\n");
      out.write("\t\t\treturn false;\n");
      out.write("  \t\t}\n");
      out.write("\n");
      out.write("  \t\t/*PASS*/\n");
      out.write("  \t\tvar b2=document.forms[0].elements[2].value;\n");
      out.write("  \t\tif(b2==null || b2==\"\")\n");
      out.write("  \t\t{\n");
      out.write("  \t\t\tdocument.getElementById(\"b2\").innerHTML=\"Enter Password\";\n");
      out.write("\t\t\treturn false;\n");
      out.write("  \t\t}\n");
      out.write("\n");
      out.write("  \t\tif(b2.length<8)\n");
      out.write("  \t\t{\n");
      out.write("  \t\t\tdocument.getElementById(\"b2\").innerHTML=\"Short Password\";\n");
      out.write("\t\t\treturn false;\t\n");
      out.write("  \t\t}\n");
      out.write("\n");
      out.write("  \t\t/*CONF PASS*/\n");
      out.write("  \t\tvar b3=document.forms[0].elements[3].value;\n");
      out.write("  \t\tif(b3==null || b3==\"\")\n");
      out.write("  \t\t{\n");
      out.write("  \t\t\tdocument.getElementById(\"b3\").innerHTML=\"Enter Password\";\n");
      out.write("\t\t\treturn false;\n");
      out.write("  \t\t}\n");
      out.write("\n");
      out.write("  \t\tif(b3.length<8)\n");
      out.write("  \t\t{\n");
      out.write("  \t\t\tdocument.getElementById(\"b3\").innerHTML=\"Short Password\";\n");
      out.write("\t\t\treturn false;\t\n");
      out.write("  \t\t}\n");
      out.write("\n");
      out.write("  \t\tif(b3!=b2)\n");
      out.write("  \t\t{\n");
      out.write("  \t\t\tdocument.getElementById(\"b3\").innerHTML=\"Password does not match\";\n");
      out.write("\t\t\treturn false;\n");
      out.write("  \t\t}\n");
      out.write("\n");
      out.write("  \t\t/*Mo No*/\n");
      out.write("  \t\tvar c1=document.forms[0].elements[4].value;\n");
      out.write("  \t\tif(c1==null || c1==\"\")\n");
      out.write("  \t\t{\n");
      out.write("  \t\t\tdocument.getElementById(\"c1\").innerHTML=\"Enter Mobile Number\";\n");
      out.write("\t\t\treturn false;\n");
      out.write("  \t\t}\n");
      out.write("\n");
      out.write("  \t\tif(c1.length!=10)\n");
      out.write("  \t\t{\n");
      out.write("  \t\t\tdocument.getElementById(\"c1\").innerHTML=\"Enter Mobile Number correctly\";\n");
      out.write("\t\t\treturn false;\n");
      out.write("  \t\t}\n");
      out.write("\n");
      out.write("  \t\t/*Aadhaar No*/\n");
      out.write("  \t\tvar c2=document.forms[0].elements[5].value;\n");
      out.write("  \t\tif(c2==null || c2==\"\")\n");
      out.write("  \t\t{\n");
      out.write("  \t\t\tdocument.getElementById(\"c2\").innerHTML=\"Enter Aadhaar Number\";\n");
      out.write("\t\t\treturn false;\n");
      out.write("  \t\t}\n");
      out.write("\n");
      out.write("  \t\tif(c2.length!=12)\n");
      out.write("  \t\t{\n");
      out.write("  \t\t\tdocument.getElementById(\"c2\").innerHTML=\"Enter Aadhaar Number correctly\";\n");
      out.write("\t\t\treturn false;\n");
      out.write("  \t\t}\n");
      out.write("\n");
      out.write("  \t\t/*PAN No*/\n");
      out.write("  \t\tvar c3=document.forms[0].elements[6].value;\n");
      out.write("  \t\tif(c3==null || c3==\"\")\n");
      out.write("  \t\t{\n");
      out.write("  \t\t\tdocument.getElementById(\"c3\").innerHTML=\"Enter PAN Number\";\n");
      out.write("\t\t\treturn false;\n");
      out.write("  \t\t}\n");
      out.write("\n");
      out.write("  \t\tif(c3.length!=10)\n");
      out.write("  \t\t{\n");
      out.write("  \t\t\tdocument.getElementById(\"c3\").innerHTML=\"Enter PAN Number correctly\";\n");
      out.write("\t\t\treturn false;\n");
      out.write("  \t\t}\n");
      out.write("\n");
      out.write("\n");
      out.write("                /*Degree*/\n");
      out.write("  \t\tvar d1=document.forms[0].elements[7].value;\n");
      out.write("  \t\tif(d1==null || d1==\"\")\n");
      out.write("  \t\t{\n");
      out.write("  \t\t\tdocument.getElementById(\"d1\").innerHTML=\"Enter Degree\";\n");
      out.write("\t\t\treturn false;\n");
      out.write("  \t\t}\n");
      out.write("                \n");
      out.write("  \t\t/*Speciality*/\n");
      out.write("  \t\tvar d2=document.forms[0].elements[8].value;\n");
      out.write("  \t\tif(d2==null || d2==\"\")\n");
      out.write("  \t\t{\n");
      out.write("  \t\t\tdocument.getElementById(\"d2\").innerHTML=\"Enter Speciality\";\n");
      out.write("\t\t\treturn false;\n");
      out.write("  \t\t}\n");
      out.write("                \n");
      out.write("                /*Experience*/\n");
      out.write("                var d3=document.forms[0].elements[8].value;\n");
      out.write("  \t\tif(d3==null || d3==\"\")\n");
      out.write("  \t\t{\n");
      out.write("  \t\t\tdocument.getElementById(\"d3\").innerHTML=\"Enter Experience\";\n");
      out.write("\t\t\treturn false;\n");
      out.write("  \t\t}\n");
      out.write("\n");
      out.write("  \t\t/*P Add*/\n");
      out.write("  \t\tvar e1=document.forms[0].elements[10].value;\n");
      out.write("  \t\tif(e1==null || e1==\"\")\n");
      out.write("  \t\t{\n");
      out.write("  \t\t\t\n");
      out.write("  \t\t\tdocument.getElementById(\"e1\").innerHTML=\"Enter Permanent Address\";\n");
      out.write("\t\t\treturn false;\n");
      out.write("  \t\t}\n");
      out.write("\n");
      out.write("  \t\t//C Add\n");
      out.write("  \t\tvar e3=document.forms[0].elements[12].value;\n");
      out.write("  \t\tif(e3==null || e3==\"\")\n");
      out.write("  \t\t{\n");
      out.write("  \t\t\tdocument.getElementById(\"e3\").innerHTML=\"Enter Current Address\";\n");
      out.write("\t\t\treturn false;\n");
      out.write("  \t\t}\n");
      out.write("  \t\t\n");
      out.write("  \t\treturn true;\n");
      out.write("  \t}\n");
      out.write("\n");
      out.write("  \tfunction cb1()\n");
      out.write("  \t{\n");
      out.write("  \t\t//Checkbox\n");
      out.write("\t//var e2=document.forms[0].elements[11].checked;\n");
      out.write("  \t\t\n");
      out.write("  \t\tif( check1.checked == true)\n");
      out.write("  \t\t{\n");
      out.write("  \t\t\tvar e3=document.forms[0].elements[10].value;\n");
      out.write("  \t\t\tdocument.forms[0].elements[12].value = e3;\n");
      out.write("  \t\t}\n");
      out.write("  \t}\n");
      out.write("  \t\t\n");
      out.write("  </script>\n");
      out.write("  <style>\n");
      out.write("  \t.row{\n");
      out.write("  \t\t/* color: ; */\n");
      out.write("  \t\tfont-family: ubuntu, segoe ui;\n");
      out.write("  \t\tfont-size: 22px;\n");
      out.write("  \t\tfont-style: bold;\n");
      out.write("  \t}\n");
      out.write("\tbody{\n");
      out.write("\t\tbackground-image: url(blue.jpg);\n");
      out.write("\t\tbackground-size: cover;\n");
      out.write("\t}\n");
      out.write("\th2{\n");
      out.write("\t\tcolor: white;\n");
      out.write("\t\tfont-family:Ubuntu;\n");
      out.write("\t}\n");
      out.write("  </style>\n");
      out.write("</head>\n");
      out.write("<body >\n");
      out.write("\t<form action=\"drdatainsert.jsp\" method=\"post\" onsubmit=\"return validate()\">\n");
      out.write("\t<h2 align=\"center\" class=\"text-primary\">Doctor Registration</h2>\n");
      out.write("\t<div class=\"row text-danger\">\n");
      out.write("\t\t<div class=\"col-lg-1\">\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-11\">\n");
      out.write("\t\t\tFull Name :\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\t<div class=\"row text-danger\">\n");
      out.write("\t\t<div class=\"col-lg-1\">\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("                    <sup> * </sup>First Name :\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<sup> * </sup>Middle Name :\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<sup> * </sup>Last Name :\n");
      out.write("\t\t</div>\n");
      out.write("\t</div><br>\n");
      out.write("\n");
      out.write("\t<div class=\"row\">\n");
      out.write("\t\t<div class=\"col-lg-1\">\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-9\">\n");
      out.write("\t\t\t<input type=\"text\" name=\"txtname\" class=\"form-control\">\n");
      out.write("\t\t\t<br><p id=\"a\" style=\"color:red\"></p>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-2\">\n");
      out.write("\t\t</div>\n");
      out.write("\t</div><br>\n");
      out.write("\t\n");
      out.write("\t<div class=\"row text-danger\">\n");
      out.write("\t\t<div class=\"col-lg-1\">\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<sup> * </sup>Email :\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<sup> * </sup>Password :\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<sup> * </sup>Confirm Password :\n");
      out.write("\t\t</div>\n");
      out.write("\t</div><br>\n");
      out.write("\n");
      out.write("\t<div class=\"row\">\n");
      out.write("\t\t<div class=\"col-lg-1\">\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<input type=\"email\" name=\"txtemail\" class=\"form-control\">\n");
      out.write("\t\t<p id=\"b1\" style=\"color:red\"></p>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<input type=\"password\" name=\"txtpass1\" class=\"form-control\">\n");
      out.write("\t\t<p id=\"b2\" style=\"color:red\"></p>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<input type=\"password\" name=\"txtpass2\" class=\"form-control\">\n");
      out.write("\t\t<p id=\"b3\" style=\"color:red\"></p>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div><br>\n");
      out.write("\n");
      out.write("\t<div class=\"row text-danger\">\n");
      out.write("\t\t<div class=\"col-lg-1\">\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<sup> * </sup>Mobile Number :\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<sup> * </sup>Aadhaar Number :\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<sup> * </sup>PAN Number :\n");
      out.write("\t\t</div>\n");
      out.write("\t</div><br>\n");
      out.write("\t\n");
      out.write("\t<div class=\"row\">\n");
      out.write("\t\t<div class=\"col-lg-1\">\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<input type=\"number\" name=\"txtmono\" class=\"form-control\">\n");
      out.write("\t\t\t<p id=\"c1\" style=\"color:red\"></p>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<input type=\"number\" name=\"txtano\" class=\"form-control\">\n");
      out.write("\t\t\t<p id=\"c2\" style=\"color:red\"></p>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<input type=\"text\" name=\"txtpno\" class=\"form-control\">\n");
      out.write("\t\t\t<p id=\"c3\" style=\"color:red\"></p>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div><br>\n");
      out.write("\n");
      out.write("\t<div class=\"row text-danger\">\n");
      out.write("\t\t<div class=\"col-lg-1\">\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<sup> * </sup>Degree :\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<sup> * </sup>Speciality :\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\tExperience :\n");
      out.write("\t\t</div>\n");
      out.write("\t</div><br>\n");
      out.write("\n");
      out.write("\t<div class=\"row text-danger\">\n");
      out.write("\t\t<div class=\"col-lg-1\">\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<input type=\"text\" name=\"txtdegree\" class=\"form-control\">\n");
      out.write("\t\t<p id=\"d1\" style=\"color:red\"></p>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<input type=\"text\" name=\"txtspecial\" class=\"form-control\">\n");
      out.write("\t\t<p id=\"d2\" style=\"color:red\"></p>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<input type=\"text\" name=\"txtexp\" class=\"form-control\">\n");
      out.write("\t\t<p id=\"d3\" style=\"color:red\"></p>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div><br>\n");
      out.write("\n");
      out.write("\t<div class=\"row text-danger\">\n");
      out.write("\t\t<div class=\"col-lg-1\">\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<sup> * </sup>Permanent Address :\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\tSame as Permanent Address :\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<sup> * </sup>Current Address :\n");
      out.write("\t\t</div>\n");
      out.write("\t</div><br>\n");
      out.write("\n");
      out.write("\t<div class=\"row\">\n");
      out.write("\t\t<div class=\"col-lg-1\">\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<textarea name=\"txtpa\"></textarea>\n");
      out.write("\t\t\t<br><p id=\"e1\" style=\"color:red\"></p>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<input type=\"checkbox\" name=\"txtpass\" class=\"form-control\" id=\"check1\" onclick=\"cb1()\">\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-lg-3\">\n");
      out.write("\t\t\t<textarea name=\"txtca\" id=\"texbox1\"></textarea>\n");
      out.write("\t\t\t<br><p id=\"e3\" style=\"color:red\"></p>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div><br>\n");
      out.write("\n");
      out.write("\t<div class=\"row\">\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"row\">\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\t\t<div align=\"center\">\n");
      out.write("\t\t\t<input type=\"submit\" value=\"submit\" class=\"btn btn-primary\">\n");
      out.write("\t\t\t&nbsp;&nbsp;&nbsp;\n");
      out.write("\t\t\t<a href=\"NEWBODY.html\" class=\"btn btn-danger\">Home</a>\n");
      out.write("\t\t</div>\n");
      out.write("\t\n");
      out.write("</form>\n");
      out.write("</body>\n");
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