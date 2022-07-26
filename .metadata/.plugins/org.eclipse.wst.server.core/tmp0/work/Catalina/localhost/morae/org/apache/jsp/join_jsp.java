/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.0.13
 * Generated at: 2022-07-20 03:18:49 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class join_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

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
  }

  public void _jspDestroy() {
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
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <meta name=\"author\" content=\"master\">\r\n");
      out.write("  <meta name=\"description\" content=\"예제\">\r\n");
      out.write("  <title>MOREA</title>\r\n");
      out.write("  \r\n");
      out.write("<!-- CSS STYLE-->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/reset.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("\r\n");
      out.write("<!-- FONT -->\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("<!--일반 평폰트 font-family:  'Gothic A1', sans-serif;-->\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Gothic+A1:wght@500&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("<!--영어 font-family: 'Abril Fatface', cursive; -->\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Song+Myung&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("<!--한국어 궁서같은거 font-family: 'Song Myung', serif; -->\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("</body>\r\n");
      out.write("  <div id=\"wrap\">\r\n");
      out.write("    <div id=\"header\">\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("         <div class=\"header\">\r\n");
      out.write("           <div class=\"header-title\">\r\n");
      out.write("              <img alt=\"html\" src=\"title.png\" href=\"#\">\r\n");
      out.write("           </div>\r\n");
      out.write("           <!-- header-title-->\r\n");
      out.write("           <div class=\"header-menu\">\r\n");
      out.write("              <a href=\"#\" class=\"search\"><span class=\"ir_pm\">search</span></a>\r\n");
      out.write("              <a href=\"index.jsp\" class=\"home\">home</a>\r\n");
      out.write("           </div>\r\n");
      out.write("          </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- //header -->\r\n");
      out.write("     <div id=\"nav\">\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("         <div class=\"nav\">\r\n");
      out.write("            <div class=\"nav-menu\">\r\n");
      out.write("               <div class=\"popluar\">\r\n");
      out.write("                  <a href=\"#\">인기</a>\r\n");
      out.write("               </div>\r\n");
      out.write("               <div class=\"month\">\r\n");
      out.write("                  <a href=\"#\">이달의 음식</a>\r\n");
      out.write("               </div>\r\n");
      out.write("               <div class=\"tv\">\r\n");
      out.write("                  <a href=\"#\">tv</a>\r\n");
      out.write("               </div>\r\n");
      out.write("               <div class=\"safe\">\r\n");
      out.write("                  <a href=\"#\">안심식당</a>\r\n");
      out.write("               </div>\r\n");
      out.write("               <div class=\"sitemap\">\r\n");
      out.write("                  <a href=\"#\">사이트맵</a>\r\n");
      out.write("               </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- //nav-menu -->\r\n");
      out.write("         </div>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("     </div>\r\n");
      out.write("     <!-- //nav -->\r\n");
      out.write("\r\n");
      out.write("    <div id=\"contents\">\r\n");
      out.write("    	<div class=\"container\">\r\n");
      out.write("    		<div class=\"signup\">\r\n");
      out.write("    			<form method=\"post\" action=\"joinAction.jsp\">\r\n");
      out.write("    				<h2>회원가입</h2>\r\n");
      out.write("    				<div class=\"group\">\r\n");
      out.write("    					<div class=\"form-group\">\r\n");
      out.write("    						<div class=\"form-group-title\">\r\n");
      out.write("    							<a class=userID>아이디</a></br>\r\n");
      out.write("    						</div>\r\n");
      out.write("	    					<input type=\"text\" class=\"form-control\"  name=\"userID\" placeholder=\"아이디\" maxlength=\"20\"><br>\r\n");
      out.write("	    				</div>\r\n");
      out.write("						<div class=\"form-group\">\r\n");
      out.write("							<div class=\"form-group-title\">\r\n");
      out.write("								<a class=userID>비밀번호</a>\r\n");
      out.write("							</div>\r\n");
      out.write("							<input type=\"password\" class=\"form-control\"  name=\"userPassword\" placeholder=\"비밀번호\" maxlength=\"20\"><br>\r\n");
      out.write("						</div>\r\n");
      out.write("						<div class=\"form-group\">\r\n");
      out.write("							<div class=\"form-group-title\">\r\n");
      out.write("								<a class=userID>비밀번호 확인</a>\r\n");
      out.write("							</div>\r\n");
      out.write("							<input type=\"password\" class=\"form-control\"  name=\"userPassword-confirm\" placeholder=\"비밀번호확인\" maxlength=\"20\"><br>\r\n");
      out.write("						</div>\r\n");
      out.write("						<div class=\"form-group\">\r\n");
      out.write("							<div class=\"form-group-title\">\r\n");
      out.write("								<a class=userID>이름</a>\r\n");
      out.write("							</div>\r\n");
      out.write("							<input type=\"text\" class=\"form-control\"  name=\"userName\" placeholder=\"이름\" maxlength=\"20\"><br>\r\n");
      out.write("						</div>\r\n");
      out.write("						<div class=\"form-group\">\r\n");
      out.write("							<div class=\"form-group-title\">\r\n");
      out.write("								<a class=userID>이메일</a>\r\n");
      out.write("							</div>\r\n");
      out.write("							<input type=\"email\" class=\"form-control\"  name=\"userEmail\" placeholder=\"이메일\" maxlength=\"30\"><br>\r\n");
      out.write("						</div>\r\n");
      out.write("						<div class=\"form-group\">\r\n");
      out.write("							<div class=\"form-group-title\">\r\n");
      out.write("								<a class=userID>전화번호</a>\r\n");
      out.write("							</div>\r\n");
      out.write("							<input type=\"text\" class=\"form-control\"  name=\"userPhonenumber\" placeholder=\"전화번호(-제외)\" maxlength=\"11\"><br>\r\n");
      out.write("						</div>\r\n");
      out.write("						<input type=\"submit\" class=\"btn\" value=\"회원가입\"><br/>\r\n");
      out.write("					</div>\r\n");
      out.write("    			</form>\r\n");
      out.write("    		</div>\r\n");
      out.write("    	</div>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    <!-- //footer -->\r\n");
      out.write("    <div id=\"footer\">\r\n");
      out.write("       <hr>\r\n");
      out.write("       <div class=\"container\">\r\n");
      out.write("            <div class=\"footer\">\r\n");
      out.write("               <div class=\"info\">\r\n");
      out.write("               \r\n");
      out.write("                  <ul>\r\n");
      out.write("                     <li><a href=\"#\">사이트 도움말</a></li>\r\n");
      out.write("                     <li><a href=\"#\">사이트 이용약관</a></li>\r\n");
      out.write("                     <li><a href=\"#\">사이트 운영규칙</a></li>\r\n");
      out.write("                     <li><a href=\"#\"><strong>개인정보취급방침</strong></a></li>\r\n");
      out.write("                     <li><a href=\"#\">책임의 한계와 법적고지</a></li>\r\n");
      out.write("                     <li><a href=\"#\">게시중단요청 서비스</a></li>\r\n");
      out.write("                     <li><a href=\"#\">고객센터</a></li>\r\n");
      out.write("                  </ul>  \r\n");
      out.write("               </div>\r\n");
      out.write("               <div class=\"maker\">\r\n");
      out.write("                            \r\n");
      out.write("               </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("   <!-- //footer -->\r\n");
      out.write("  </div>\r\n");
      out.write("    <!-- //wrap -->\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
}
