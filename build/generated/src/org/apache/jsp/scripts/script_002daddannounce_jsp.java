package org.apache.jsp.scripts;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.io.InputStream;
import com.base.DCM;

public final class script_002daddannounce_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
 

    String title = request.getParameter("title");
    String desc = request.getParameter("desc");
    String autor = session.getAttribute("login").toString();
    String brand = request.getParameter("brand");
    String blob = request.getParameter("blob");
    String model = request.getParameter("model");
    String price = request.getParameter("price");
   // InputStream inputStream = null;
   // Part filePart = request.getPart("blob");

    String sql = ("INSERT INTO \"SOUTHERNAUTO\".\"ANNONCE\" (ID, TITRE, DESCRIPTION, AUTOR, IMAGE, BRAND, MODEL, PRICE) "+
            "VALUES((SELECT max(ID)+1 from \"SOUTHERNAUTO\".\"ANNONCE\"),'"+title+"','"+desc+"','"+autor+"','"+blob+"','"+brand+"','"+model+"',"+price+")");
    System.out.println(sql);
    //PreparedStatement statement = DCM.prepareStatement(sql);
    //inputStream = filePart.getInputStream();
    //statement.setBlob(1, inputStream);
    
    boolean rs = DCM.AMS_request(sql);
    if(rs==true){
        response.sendRedirect("../Main/index.jsp?sucess=1");
    }else{
        response.sendRedirect("../Main/AjouterAnnonce.jsp?error=1");
    }

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
