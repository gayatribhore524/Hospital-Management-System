/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.35
 * Generated at: 2025-03-08 21:31:14 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.doctor;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;
import com.entity.Doctor;
import com.db.DBConnect;
import com.dao.DoctorDao;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/component/allcss.jsp", Long.valueOf(1740659582556L));
    _jspx_dependants.put("/WEB-INF/lib/jakarta.servlet.jsp.jstl-2.0.0.jar", Long.valueOf(1740659172513L));
    _jspx_dependants.put("jar:file:/E:/SERVLET_JSP_PROJECT/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Hospital_Management_System/WEB-INF/lib/jakarta.servlet.jsp.jstl-2.0.0.jar!/META-INF/c.tld", Long.valueOf(1602854172000L));
    _jspx_dependants.put("/doctor/navbar.jsp", Long.valueOf(1741469471135L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(4);
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = new java.util.LinkedHashSet<>(4);
    _jspx_imports_classes.add("com.dao.DoctorDao");
    _jspx_imports_classes.add("com.db.DBConnect");
    _jspx_imports_classes.add("com.entity.Doctor");
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fredirect_0026_005furl_005fnobody;

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public boolean getErrorOnELNotFound() {
    return false;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fredirect_0026_005furl_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
    _005fjspx_005ftagPool_005fc_005fredirect_0026_005furl_005fnobody.release();
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Doctor Dashboard</title>\r\n");
      out.write("\r\n");
      out.write("<!-- Include Bootstrap & FontAwesome -->\r\n");
      out.write("<link\r\n");
      out.write("	href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\"\r\n");
      out.write("	rel=\"stylesheet\"\r\n");
      out.write("	integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\"\r\n");
      out.write("	crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("	href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css\"\r\n");
      out.write("	integrity=\"sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==\"\r\n");
      out.write("	crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\r\n");
      out.write("\r\n");
      out.write("<script\r\n");
      out.write("	src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\"\r\n");
      out.write("	integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\"\r\n");
      out.write("	crossorigin=\"anonymous\"></script>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("/* Improved Card Styling */\r\n");
      out.write(".paint-card {\r\n");
      out.write("    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);\r\n");
      out.write("    border-radius: 12px;\r\n");
      out.write("    background: linear-gradient(to right, #007bff, #00c6ff);\r\n");
      out.write("    color: white;\r\n");
      out.write("    transition: transform 0.3s ease-in-out;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".paint-card:hover {\r\n");
      out.write("    transform: scale(1.05);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".icon-container {\r\n");
      out.write("    display: flex;\r\n");
      out.write("    justify-content: center;\r\n");
      out.write("    align-items: center;\r\n");
      out.write("    height: 70px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".icon-container i {\r\n");
      out.write("    font-size: 3rem;\r\n");
      out.write("    color: #fff;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Responsive Padding */\r\n");
      out.write(".container {\r\n");
      out.write("    padding-top: 30px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Text Styling */\r\n");
      out.write(".fs-4 {\r\n");
      out.write("    font-weight: bold;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Adjust layout on small screens */\r\n");
      out.write("@media (max-width: 768px) {\r\n");
      out.write("    .col-md-4 {\r\n");
      out.write("        margin-bottom: 15px;\r\n");
      out.write("    }\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<!-- Redirect if not logged in -->\r\n");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- Navbar -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-dark bg-primary\">\r\n");
      out.write("	<div class=\"container-fluid\">\r\n");
      out.write("		<a class=\"navbar-brand\" href=\"index.jsp\"><i\r\n");
      out.write("			class=\"fas fa-clinic-medical\"></i> Medi Home</a>\r\n");
      out.write("		<button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\"\r\n");
      out.write("			data-bs-target=\"#navbarSupportedContent\"\r\n");
      out.write("			aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\"\r\n");
      out.write("			aria-label=\"Toggle navigation\">\r\n");
      out.write("			<span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("		</button>\r\n");
      out.write("		<div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("			<ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n");
      out.write("				<li class=\"nav-item\"><a class=\"nav-link active\" href=\"index.jsp\">HOME</a></li>\r\n");
      out.write("				<li class=\"nav-item\"><a class=\"nav-link active\" href=\"patient.jsp\">PATIENT</a></li>\r\n");
      out.write("			</ul>\r\n");
      out.write("\r\n");
      out.write("			<form class=\"d-flex\">\r\n");
      out.write("				<div class=\"dropdown\">\r\n");
      out.write("					<button class=\"btn btn-light dropdown-toggle\" type=\"button\"\r\n");
      out.write("						id=\"dropdownMenuButton1\" data-bs-toggle=\"dropdown\"\r\n");
      out.write("						aria-expanded=\"false\">\r\n");
      out.write("						<i class=\"fas fa-user-circle\"></i> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${doctObj.fullName }", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("					</button>\r\n");
      out.write("					<ul class=\"dropdown-menu\" aria-labelledby=\"dropdownMenuButton1\">\r\n");
      out.write("						<li><a class=\"dropdown-item\" href=\"edit_profile.jsp\">Edit\r\n");
      out.write("								Profile</a></li>\r\n");
      out.write("						<li><a class=\"dropdown-item\" href=\"../doctorLogout\">Logout</a></li>\r\n");
      out.write("					</ul>\r\n");
      out.write("				</div>\r\n");
      out.write("			</form>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("</nav>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- Page Title -->\r\n");
      out.write("<p class=\"text-center fs-3 mt-3\">👨‍⚕️ Doctor Dashboard</p>\r\n");
      out.write("\r\n");

Doctor d = (Doctor) session.getAttribute("doctObj");
DoctorDao dao = new DoctorDao(DBConnect.getConn());

      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("    <div class=\"row justify-content-center\">\r\n");
      out.write("        <!-- Doctor Count Card -->\r\n");
      out.write("        <div class=\"col-md-4 col-sm-10 mb-3\">\r\n");
      out.write("            <div class=\"card paint-card text-center p-4\">\r\n");
      out.write("                <div class=\"icon-container\">\r\n");
      out.write("                    <i class=\"fas fa-user-md\"></i>\r\n");
      out.write("                </div>\r\n");
      out.write("                <p class=\"fs-4\">Total Doctors</p>\r\n");
      out.write("                <p class=\"fs-2\">");
      out.print(dao.countDoctor());
      out.write("</p>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!-- Appointment Count Card -->\r\n");
      out.write("        <div class=\"col-md-4 col-sm-10 mb-3\">\r\n");
      out.write("            <div class=\"card paint-card text-center p-4\">\r\n");
      out.write("                <div class=\"icon-container\">\r\n");
      out.write("                    <i class=\"far fa-calendar-check\"></i>\r\n");
      out.write("                </div>\r\n");
      out.write("                <p class=\"fs-4\">Total Appointments</p>\r\n");
      out.write("                <p class=\"fs-2\">");
      out.print(dao.countAppointmentByDocotrId(d.getId()));
      out.write("</p>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fif_005f0(jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    jakarta.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f0.setParent(null);
    // /doctor/index.jsp(63,0) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${empty doctObj}", boolean.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
    if (_jspx_eval_c_005fif_005f0 != jakarta.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("    ");
        if (_jspx_meth_c_005fredirect_005f0(_jspx_th_c_005fif_005f0, _jspx_page_context))
          return true;
        out.write('\r');
        out.write('\n');
        int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
        if (evalDoAfterBody != jakarta.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f0.doEndTag() == jakarta.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
    return false;
  }

  private boolean _jspx_meth_c_005fredirect_005f0(jakarta.servlet.jsp.tagext.JspTag _jspx_th_c_005fif_005f0, jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    //  c:redirect
    org.apache.taglibs.standard.tag.rt.core.RedirectTag _jspx_th_c_005fredirect_005f0 = (org.apache.taglibs.standard.tag.rt.core.RedirectTag) _005fjspx_005ftagPool_005fc_005fredirect_0026_005furl_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.RedirectTag.class);
    _jspx_th_c_005fredirect_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fredirect_005f0.setParent((jakarta.servlet.jsp.tagext.Tag) _jspx_th_c_005fif_005f0);
    // /doctor/index.jsp(64,4) name = url type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fredirect_005f0.setUrl("../doctor_login.jsp");
    int _jspx_eval_c_005fredirect_005f0 = _jspx_th_c_005fredirect_005f0.doStartTag();
    if (_jspx_th_c_005fredirect_005f0.doEndTag() == jakarta.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fredirect_0026_005furl_005fnobody.reuse(_jspx_th_c_005fredirect_005f0);
    return false;
  }
}
