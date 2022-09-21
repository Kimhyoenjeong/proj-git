/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.0.13
 * Generated at: 2022-09-21 09:38:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;
import java.io.PrintWriter;
import bbs.BbsDAO;
import bbs.Bbs;
import java.util.ArrayList;
import java.lang.Math;

public final class bbs_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.io.PrintWriter");
    _jspx_imports_classes.add("bbs.Bbs");
    _jspx_imports_classes.add("bbs.BbsDAO");
    _jspx_imports_classes.add("java.lang.Math");
    _jspx_imports_classes.add("java.util.ArrayList");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width\", initial-scale=\"1\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/reset.css\">\r\n");
      out.write("\r\n");
      out.write("<title>모두의 레시피</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	");

		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		int pageNumber = 1; //기본페이지
		if (request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber")); //파라미터는 꼭 이런식으로 바꿔줘야됨
		}
		 int boardID = 0;
			if (request.getParameter("boardID") != null){
				boardID = Integer.parseInt(request.getParameter("boardID"));
			}
	
      out.write("\r\n");
      out.write("	<div id=\"header\">\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("	      <div class=\"header\">\r\n");
      out.write("	        <div class=\"header-title\">\r\n");
      out.write("	        	<img alt=\"html\" src=\"img/title.png\" href=\"#\">\r\n");
      out.write("	        </div>\r\n");
      out.write("	        <!-- header-title-->\r\n");
      out.write("	        ");

	        	if(userID == null){
	        
      out.write("\r\n");
      out.write("	        <div class=\"header-menu\">\r\n");
      out.write("	        	<a href=\"#\" class=\"search\"><span class=\"ir_pm\">search</span></a>\r\n");
      out.write("	        	<a href=\"login.jsp\" class=\"login\">로그인</a>\r\n");
      out.write("	        	<a href=\"join.jsp\" class=\"join\">회원가입</a>\r\n");
      out.write("	        </div>\r\n");
      out.write("	        ");
 
				} else {
			
      out.write("\r\n");
      out.write("			<div class=\"header-menu\">\r\n");
      out.write("	        	<a href=\"#\" class=\"search\"><span class=\"ir_pm\">search</span></a>\r\n");
      out.write("	        	<a href=\"jjimBbs.jsp?pageNumber=1\">찜목록</a>\r\n");
      out.write("              	<a href=\"logout.jsp\">로그아웃</a>\r\n");
      out.write("	        </div>\r\n");
      out.write("	        ");

				};
			
      out.write("\r\n");
      out.write("	       </div>\r\n");
      out.write("	       <!-- class_header -->\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- //id_header -->\r\n");
      out.write("     <div id=\"nav\">\r\n");
      out.write("		<div class=\"container\">\r\n");
      out.write("			<div class=\"nav\">\r\n");
      out.write("				<div class=\"nav-menu\">\r\n");
      out.write("					<div class=\"recommend\">\r\n");
      out.write("						<a href=\"#\">추천</a>\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"popluar\">\r\n");
      out.write("						<a href=\"#\">인기</a>\r\n");
      out.write("						<!-- <div class=\"nav-under\"></div> -->\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"month\">\r\n");
      out.write("						<a href=\"monthFd.jsp\">이달의 음식</a>\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"tv\">\r\n");
      out.write("						<a href=\"video.jsp\">VIDEO</a>\r\n");
      out.write("					</div>\r\n");
      out.write("					");
 if (boardID == 1){ 
      out.write("\r\n");
      out.write("					<div class=\"evaluation\">\r\n");
      out.write("						<a href=\"bbs.jsp?boardID=1&pageNumber=1\">맛집 평가</a>\r\n");
      out.write("						<div class=\"nav-under\"></div>\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"bbs\">\r\n");
      out.write("						<a href=\"bbs.jsp?boardID=2&pageNumber=1\">자유 게시판</a>\r\n");
      out.write("					</div>\r\n");
      out.write("					");
} else if(boardID == 2){ 
      out.write("\r\n");
      out.write("					<div class=\"evaluation\">\r\n");
      out.write("						<a href=\"bbs.jsp?boardID=1&pageNumber=1\">맛집 평가</a>\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"bbs\">\r\n");
      out.write("						<a href=\"bbs.jsp?boardID=2&pageNumber=1\">자유 게시판</a>\r\n");
      out.write("						<div class=\"nav-under\"></div>\r\n");
      out.write("					</div>\r\n");
      out.write("					");
 } 
      out.write("\r\n");
      out.write("					<div class=\"safe\">\r\n");
      out.write("						<a href=\"#\">안심식당</a>\r\n");
      out.write("					</div>\r\n");
      out.write("\r\n");
      out.write("				</div>\r\n");
      out.write("				<!-- //nav-menu -->\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("\r\n");
      out.write("		<div id=\"contents\">\r\n");
      out.write("			<div id=\"bbs_contents\">\r\n");
      out.write("				<div class=\"container\">\r\n");
      out.write("					<div class=\"bbs_contents\">\r\n");
      out.write("					");
 if (boardID == 1){ 
      out.write("\r\n");
      out.write("						<div class=\"bbs_title\">\r\n");
      out.write("							<a>| Restaurant evaluation |</a>\r\n");
      out.write("	            			<div class=\"bbs-title-info\">\r\n");
      out.write("	            				<a> 다른 사람들에게 자신이 아는 맛집을 공유해주세요. </a>\r\n");
      out.write("	            			</div>\r\n");
      out.write("						</div>\r\n");
      out.write("					");
} else if(boardID == 2){ 
      out.write("\r\n");
      out.write("						<div class=\"bbs_title\">\r\n");
      out.write("							<a>| FREE BOARD |</a>\r\n");
      out.write("	            			<div class=\"bbs-title-info\">\r\n");
      out.write("	            				<a> 자유롭게 글을 쓰는 곳입니다. </a>\r\n");
      out.write("	            			</div>\r\n");
      out.write("						</div>\r\n");
      out.write("					");
 } 
      out.write("\r\n");
      out.write("						<div class=\"search-contents\">\r\n");
      out.write("						<form class=\"search\" name = \"p_search\">\r\n");
      out.write("							<input type=\"button\" class=\"search-btn\" value=\"검색\" onclick=\"nwindow(");
      out.print(boardID);
      out.write(")\"/>\r\n");
      out.write("						</form>\r\n");
      out.write("						</div>		\r\n");
      out.write("						<div class=\"row\">\r\n");
      out.write("						<table class=\"table\" >\r\n");
      out.write("							<thead>\r\n");
      out.write("								<tr>\r\n");
      out.write("									<th>번호</th>\r\n");
      out.write("									<th>제목</th>\r\n");
      out.write("									<th>작성자</th>\r\n");
      out.write("									<th>작성일</th>\r\n");
      out.write("								</tr>\r\n");
      out.write("							</thead>\r\n");
      out.write("							<tbody>\r\n");
      out.write("								");

									BbsDAO bbsDAO = new BbsDAO();
									ArrayList<Bbs> list = bbsDAO.getList(boardID, pageNumber);
									for(int i=0; i<list.size(); i++){	
								
      out.write("\r\n");
      out.write("								<tr>\r\n");
      out.write("									<td>");
      out.print( list.get(i).getBbsID() );
      out.write("</td>\r\n");
      out.write("									<td><a href=\"view.jsp?boardID=");
      out.print(boardID);
      out.write("&bbsID=");
      out.print( list.get(i).getBbsID() );
      out.write('"');
      out.write('>');
      out.print( list.get(i).getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") );
      out.write("</a></td>\r\n");
      out.write("									<td>");
      out.print( list.get(i).getUserID() );
      out.write("</td>\r\n");
      out.write("									<td>");
      out.print( list.get(i).getBbsDate().substring(0,11) + list.get(i).getBbsDate().substring(11,13) + "시 " + list.get(i).getBbsDate().substring(14,16) + "분" );
      out.write("</td>\r\n");
      out.write("								</tr>\r\n");
      out.write("								");

									}
								
      out.write("\r\n");
      out.write("							</tbody>\r\n");
      out.write("						</table>\r\n");
      out.write("								\r\n");
      out.write("						<a href=\"write.jsp?boardID=");
      out.print(boardID);
      out.write("\" class=\"btn\">글쓰기</a>\r\n");
      out.write("					</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		<div class=container style=\"text-align:center\">\r\n");
      out.write("			");

				BbsDAO bbsDAO1 = new BbsDAO();
				int pages = (int) Math.ceil(bbsDAO1.getCount(boardID)/10)+1;
				for(int i=1; i<=pages; i++){ 
      out.write("\r\n");
      out.write("					<button type=\"button\" class=\"btn btn-secondary\" onclick=\"location.href='bbs.jsp?boardID=");
      out.print(boardID );
      out.write("&pageNumber=");
      out.print(i );
      out.write('\'');
      out.write('"');
      out.write('>');
      out.print(i );
      out.write("</button>\r\n");
      out.write("				");
} 
      out.write("\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("	\r\n");
      out.write("	<script>\r\n");
      out.write("	function nwindow(boardID){\r\n");
      out.write("		window.name = \"parant\";\r\n");
      out.write("		var url= \"search.jsp?boardID=\"+boardID;\r\n");
      out.write("		window.open(url,\"\",\"width=250,height=200,left=300\");\r\n");
      out.write("	}\r\n");
      out.write("</script>\r\n");
      out.write("    <!-- //footer -->\r\n");
      out.write("    <div id=\"footer\">\r\n");
      out.write("    	<hr>\r\n");
      out.write("    	<div class=\"container\">\r\n");
      out.write("            <div class=\"footer\">\r\n");
      out.write("            	<div class=\"info\">\r\n");
      out.write("            	\r\n");
      out.write("            	<ul>\r\n");
      out.write("            			<li><a href=\"#\">사이트 도움말</a></li>\r\n");
      out.write("                        <li><a href=\"#\">사이트 이용약관</a></li>\r\n");
      out.write("                        <li><a href=\"#\">사이트 운영규칙</a></li>\r\n");
      out.write("                        <li><a href=\"#\"><strong>개인정보취급방침</strong></a></li>\r\n");
      out.write("                        <li><a href=\"#\">책임의 한계와 법적고지</a></li>\r\n");
      out.write("                        <li><a href=\"#\">게시중단요청 서비스</a></li>\r\n");
      out.write("                        <li><a href=\"#\">고객센터</a></li>\r\n");
      out.write("            		</ul>  \r\n");
      out.write("            	</div>\r\n");
      out.write("            	<div class=\"maker\">\r\n");
      out.write("            		       	\r\n");
      out.write("            	</div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("	<!-- //footer -->\r\n");
      out.write("	<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\r\n");
      out.write("	<script src=\"js/bootstrap.min.js\"></script> \r\n");
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
