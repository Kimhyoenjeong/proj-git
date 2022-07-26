/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.0.13
 * Generated at: 2022-07-04 10:33:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;
import java.io.InputStream;
import java.net.URLEncoder;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import java.net.URL;

public final class monthFd_005fD2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes.add("java.net.URLEncoder");
    _jspx_imports_classes.add("org.w3c.dom.NodeList");
    _jspx_imports_classes.add("org.w3c.dom.Element");
    _jspx_imports_classes.add("org.w3c.dom.Document");
    _jspx_imports_classes.add("java.net.URL");
    _jspx_imports_classes.add("org.w3c.dom.Node");
    _jspx_imports_classes.add("javax.xml.parsers.DocumentBuilderFactory");
    _jspx_imports_classes.add("java.io.InputStream");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>이달의음식</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");

//레시피 상세조회
if(request.getParameter("cntntsNo")!=null && !request.getParameter("cntntsNo").equals("")){
	//apiKey - 농사로 Open API에서 신청 후 승인되면 확인 가능
	String apiKey="20220701DXKFWCSZ3NCD56IZPICHPA";
	//서비스 명
	String serviceName="monthFd";
	//오퍼레이션 명
	String operationName="monthNewFdDtl";

	//XML 받을 URL 생성
	String parameter = "/"+serviceName+"/"+operationName;
	parameter += "?apiKey="+ apiKey;
	parameter += "&cntntsNo="+ request.getParameter("cntntsNo");

	//서버와 통신
	URL apiUrl = new URL("http://api.nongsaro.go.kr/service"+parameter);
	InputStream apiStream = apiUrl.openStream();

	Document doc = null;
	try{
		//xml document
		doc = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(apiStream);
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		apiStream.close();
	}


	//음식명
	String fdNm = null;
	//재료정보
	String matrlInfo = null;
	//조리방법정보
	String ckngMthInfo = null;
	//단체급식적용정보
	String grpMlsvApplcInfo = null;
	//조리기기 도구정보
	String ckngmhrlsUntInfo = null;
	//비고정보
	String rmInfo = null;
	//인분명
	String phphmntNm = null;
	//에너지량
	String energyQy = null;
	//탄수화물량
	String crbQy = null;
	//지질량
	String ntrfsQy = null;
	//단백질량
	String protQy = null;
	//식이섬유량
	String edblfibrQy = null;
	//비타민A량
	String vtmaQy = null;
	//비타민E량
	String vteQy = null;
	//비타민C량
	String vtcQy = null;
	//티아민량
	String thiaQy = null;
	//리보플라빈량
	String niboplaQy = null;
	//칼슘량
	String clciQy = null;
	//나트륨량
	String naQy = null;
	//칼륨량
	String ptssQy = null;
	//철량
	String irnQy = null;
	//이미지구분코드
	String rtnImgSeCode = null;
	//이미지 경로
	String rtnFileCours = null;
	//이미지 물리명
	String rtnStreFileNm = null;
	//이미지 설명
	String rtnImageDc = null;

	try{fdNm = doc.getElementsByTagName("fdNm").item(0).getFirstChild().getNodeValue();}catch(Exception e){fdNm = "";}
	try{matrlInfo = doc.getElementsByTagName("matrlInfo").item(0).getFirstChild().getNodeValue();}catch(Exception e){matrlInfo = "";}
	try{ckngMthInfo = doc.getElementsByTagName("ckngMthInfo").item(0).getFirstChild().getNodeValue();}catch(Exception e){ckngMthInfo = "";}
	try{grpMlsvApplcInfo = doc.getElementsByTagName("grpMlsvApplcInfo").item(0).getFirstChild().getNodeValue();}catch(Exception e){grpMlsvApplcInfo = "";}
	try{ckngmhrlsUntInfo = doc.getElementsByTagName("ckngmhrlsUntInfo").item(0).getFirstChild().getNodeValue();}catch(Exception e){ckngmhrlsUntInfo = "";}
	try{rmInfo = doc.getElementsByTagName("rmInfo").item(0).getFirstChild().getNodeValue();}catch(Exception e){rmInfo = "";}
	try{phphmntNm = doc.getElementsByTagName("phphmntNm").item(0).getFirstChild().getNodeValue();}catch(Exception e){phphmntNm = "";}
	try{energyQy = doc.getElementsByTagName("energyQy").item(0).getFirstChild().getNodeValue();}catch(Exception e){energyQy = "";}
	try{crbQy = doc.getElementsByTagName("crbQy").item(0).getFirstChild().getNodeValue();}catch(Exception e){crbQy = "";}
	try{ntrfsQy = doc.getElementsByTagName("ntrfsQy").item(0).getFirstChild().getNodeValue();}catch(Exception e){ntrfsQy = "";}
	try{protQy = doc.getElementsByTagName("protQy").item(0).getFirstChild().getNodeValue();}catch(Exception e){protQy = "";}
	try{edblfibrQy = doc.getElementsByTagName("edblfibrQy").item(0).getFirstChild().getNodeValue();}catch(Exception e){edblfibrQy = "";}
	try{vtmaQy = doc.getElementsByTagName("vtmaQy").item(0).getFirstChild().getNodeValue();}catch(Exception e){vtmaQy = "";}
	try{vteQy = doc.getElementsByTagName("vteQy").item(0).getFirstChild().getNodeValue();}catch(Exception e){vteQy = "";}
	try{vtcQy = doc.getElementsByTagName("vtcQy").item(0).getFirstChild().getNodeValue();}catch(Exception e){vtcQy = "";}
	try{thiaQy = doc.getElementsByTagName("thiaQy").item(0).getFirstChild().getNodeValue();}catch(Exception e){thiaQy = "";}
	try{niboplaQy = doc.getElementsByTagName("niboplaQy").item(0).getFirstChild().getNodeValue();}catch(Exception e){niboplaQy = "";}
	try{clciQy = doc.getElementsByTagName("clciQy").item(0).getFirstChild().getNodeValue();}catch(Exception e){clciQy = "";}
	try{naQy = doc.getElementsByTagName("naQy").item(0).getFirstChild().getNodeValue();}catch(Exception e){naQy = "";}
	try{ptssQy = doc.getElementsByTagName("ptssQy").item(0).getFirstChild().getNodeValue();}catch(Exception e){ptssQy = "";}
	try{irnQy = doc.getElementsByTagName("irnQy").item(0).getFirstChild().getNodeValue();}catch(Exception e){irnQy = "";}
	try{rtnImgSeCode = doc.getElementsByTagName("rtnImgSeCode").item(0).getFirstChild().getNodeValue();}catch(Exception e){rtnImgSeCode = "";}
	try{rtnFileCours = doc.getElementsByTagName("rtnFileCours").item(0).getFirstChild().getNodeValue();}catch(Exception e){rtnFileCours = "";}
	try{rtnStreFileNm = doc.getElementsByTagName("rtnStreFileNm").item(0).getFirstChild().getNodeValue();}catch(Exception e){rtnStreFileNm = "";}
	try{rtnImageDc = doc.getElementsByTagName("rtnImageDc").item(0).getFirstChild().getNodeValue();}catch(Exception e){rtnImageDc = "";}

	
      out.write("\r\n");
      out.write("\r\n");
      out.write("	<div>\r\n");
      out.write("	<ul>\r\n");
      out.write("	");

	String[] rtnStreFileNmArr = rtnStreFileNm.split("\\|");
	String[] rtnFileCoursArr = rtnFileCours.split("\\|");
	String[] rtnImgSeCodeArr= rtnImgSeCode.split("\\|");
	for(int i=0; i<rtnStreFileNmArr.length; i++){
		if("209006".equals(rtnImgSeCodeArr[i]) || "209007".equals(rtnImgSeCodeArr[i])){
			String imgUrl = "http://www.nongsaro.go.kr/"+ rtnFileCoursArr[i] +"/"+ rtnStreFileNmArr[i];
			
      out.write("\r\n");
      out.write("			<li style=\"width: 33%;display: inline-block;\"><a href=\"#\">\r\n");
      out.write("			<img src=\"");
      out.print(imgUrl);
      out.write("\" alt=\"\"  title=\"\" style=\"width: 249px;height: 198px;\"/>\r\n");
      out.write("			</a></li>\r\n");
      out.write("			");

		}
	}


      out.write("\r\n");
      out.write("	</ul>\r\n");
      out.write("	</div>\r\n");
      out.write("	<!-- //이미지 갤러리 영역 -->\r\n");
      out.write("	<div>\r\n");
      out.write("		<!-- 내용 -->\r\n");
      out.write("		<h2>");
      out.print(fdNm);
      out.write("</h2>\r\n");
      out.write("		<table border=\"1\" cellSpacing=\"0\" cellPadding=\"0\">\r\n");
      out.write("			<caption>레시피내용</caption>\r\n");
      out.write("			<colgroup>\r\n");
      out.write("				<col style=\"width:20%\" />\r\n");
      out.write("				<col/>\r\n");
      out.write("			</colgroup>\r\n");
      out.write("			<tbody>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td class=\"txt-c\">재료</td>\r\n");
      out.write("					<td>");
      out.print(matrlInfo.replaceAll("\n", "<br/>"));
      out.write("</td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td class=\"txt-c\">만드는 법</td>\r\n");
      out.write("					<td>");
      out.print(ckngMthInfo.replaceAll("\n", "<br/>"));
      out.write("</td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td class=\"txt-c\">단체급식 적용법</td>\r\n");
      out.write("					<td>");
      out.print(grpMlsvApplcInfo.replaceAll("\n", "<br/>"));
      out.write("</td>\r\n");
      out.write("				</tr>\r\n");
      out.write("		</table>\r\n");
      out.write("		<!--// 내용 -->\r\n");
      out.write("	</div>\r\n");
      out.write("	<h2>영양성분 - ");
      out.print(fdNm);
      out.write('(');
      out.print(phphmntNm);
      out.write(")</h2>\r\n");
      out.write("		<table border=\"1\" cellSpacing=\"0\" cellPadding=\"0\">\r\n");
      out.write("			<caption>영양성분 상세표</caption>\r\n");
      out.write("			<colgroup>\r\n");
      out.write("				<col style=\"width:20%\" />\r\n");
      out.write("				<col style=\"width:20%\" />\r\n");
      out.write("				<col style=\"width:20%\" />\r\n");
      out.write("				<col style=\"width:20%\" />\r\n");
      out.write("				<col style=\"width:20%\" />\r\n");
      out.write("			</colgroup>\r\n");
      out.write("			<thead>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<th scope=\"row\">에너지<br />(kcal)</th>\r\n");
      out.write("					<th scope=\"row\">탄수화물<br />(g)</th>\r\n");
      out.write("					<th scope=\"row\">지질<br />(g)</th>\r\n");
      out.write("					<th scope=\"row\">단백질<br />(g)</th>\r\n");
      out.write("					<th scope=\"row\">식이섬유<br />(g)</th>\r\n");
      out.write("				</tr>\r\n");
      out.write("			</thead>\r\n");
      out.write("			<tbody>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td class=\"txt-c\"> ");
      out.print(energyQy);
      out.write("</td>\r\n");
      out.write("					<td class=\"txt-c\"> ");
      out.print(crbQy);
      out.write("</td>\r\n");
      out.write("					<td class=\"txt-c\"> ");
      out.print(ntrfsQy);
      out.write("</td>\r\n");
      out.write("					<td class=\"txt-c\"> ");
      out.print(protQy);
      out.write("</td>\r\n");
      out.write("					<td class=\"txt-c\"> ");
      out.print(edblfibrQy);
      out.write("</td>\r\n");
      out.write("				</tr>\r\n");
      out.write("			</tbody>\r\n");
      out.write("		</table>\r\n");
      out.write("\r\n");
      out.write("		<table border=\"1\" cellSpacing=\"0\" cellPadding=\"0\">\r\n");
      out.write("			<caption>영양성분 상세표</caption>\r\n");
      out.write("			<colgroup>\r\n");
      out.write("				<col style=\"width:11%\" />\r\n");
      out.write("				<col style=\"width:11%\" />\r\n");
      out.write("				<col style=\"width:11%\" />\r\n");
      out.write("				<col style=\"width:11%\" />\r\n");
      out.write("				<col style=\"width:11%\" />\r\n");
      out.write("				<col style=\"width:11%\" />\r\n");
      out.write("				<col style=\"width:11%\" />\r\n");
      out.write("				<col style=\"width:11%\" />\r\n");
      out.write("				<col style=\"width:11%\" />\r\n");
      out.write("			</colgroup>\r\n");
      out.write("			<thead>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<th scope=\"row\">비타민A<br />(ug RE)</th>\r\n");
      out.write("					<th scope=\"row\">비타민E<br />(mg)</th>\r\n");
      out.write("					<th scope=\"row\">비타민C<br />(mg)</th>\r\n");
      out.write("					<th scope=\"row\">티아민<br />(mg)</th>\r\n");
      out.write("					<th scope=\"row\">리보플라빈<br />(mg)</th>\r\n");
      out.write("					<th scope=\"row\">칼슘<br />(mg)</th>\r\n");
      out.write("					<th scope=\"row\">나트륨<br />(mg)</th>\r\n");
      out.write("					<th scope=\"row\">칼륨<br />(mg)</th>\r\n");
      out.write("					<th scope=\"row\">철<br />(mg)</th>\r\n");
      out.write("				</tr>\r\n");
      out.write("			</thead>\r\n");
      out.write("			<tbody>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td class=\"txt-c\"> ");
      out.print(vtmaQy);
      out.write("</td>\r\n");
      out.write("					<td class=\"txt-c\"> ");
      out.print(vteQy);
      out.write("</td>\r\n");
      out.write("					<td class=\"txt-c\"> ");
      out.print(vtcQy);
      out.write("</td>\r\n");
      out.write("					<td class=\"txt-c\"> ");
      out.print(thiaQy);
      out.write("</td>\r\n");
      out.write("					<td class=\"txt-c\"> ");
      out.print(niboplaQy);
      out.write("</td>\r\n");
      out.write("					<td class=\"txt-c\"> ");
      out.print(clciQy);
      out.write("</td>\r\n");
      out.write("					<td class=\"txt-c\"> ");
      out.print(naQy);
      out.write("</td>\r\n");
      out.write("					<td class=\"txt-c\"> ");
      out.print(ptssQy);
      out.write("</td>\r\n");
      out.write("					<td class=\"txt-c\"> ");
      out.print(irnQy);
      out.write("</td>\r\n");
      out.write("				</tr>\r\n");
      out.write("			</tbody>\r\n");
      out.write("		</table>\r\n");
      out.write("	");
if(!"".equals(ckngmhrlsUntInfo)){ 
      out.write("\r\n");
      out.write("	<span>조리기기 및 도구</span><br />\r\n");
      out.write("	<p>\r\n");
      out.write("		");
      out.print(ckngmhrlsUntInfo.replaceAll("\n", "<br/>"));
      out.write("\r\n");
      out.write("	</p>\r\n");
      out.write("	");
} 
      out.write("\r\n");
      out.write("\r\n");
} 
      out.write("\r\n");
      out.write("\r\n");
      out.write("<br>\r\n");
      out.write("<input type=\"button\" onclick=\"javascript:location.href='monthFd.jsp'\" value=\"처음화면으로\"/>&nbsp;\r\n");
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
