package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class enrollment_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    try
    {
        int shid = Integer.parseInt(request.getParameter("t1"));
        String shname = "'" + request.getParameter("t2")+"'";
        String shcity = "'" + request.getParameter("t3")+"'";
        String shadd = "'" + request.getParameter("t4")+"'";
        String shdate1 = "'" + request.getParameter("t5")+"'";
        String shdate2 = "'" + request.getParameter("t6")+"'";
        int shfees = Integer.parseInt(request.getParameter("t7"));
        String shcname = "'" +request.getParameter("t8")+"'";
        String shmo = "'" + request.getParameter("t9")+"'";
        String shpay = "'" + request.getParameter("t10")+"'";
        String shtid = "'" + request.getParameter("t11")+"'";
        String shad = "'" + request.getParameter("t12")+"'";
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
        Statement st = con.createStatement();
        String q = "insert into enrollment(sid, esname, ecity, eaddress, edate1, edate2, shibirfees, ecname, emo, epay, etid, applyd) values("+shid+","+shname+","+shcity+","+shadd+","+shdate1+","+shdate2+","+shfees+","+shcname+","+shmo+","+shpay+","+shtid+","+shad+")";
        out.print(q);
        //st.executeUpdate(q);
        
        st.close();
        con.close();
       response.sendRedirect("clientdashboard.jsp");
        
    }
    catch(Exception e)
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
