<%@ include file="common.jsp" %>
<body background="ob018.jpg">
<%@page import = "java.sql.*"%>
<%!
 Statement stmt=null;
 ResultSet rs=null;
 PreparedStatement pst1=null;
 String cname1,i="0",pwd1,type="r";
 %>
 <%
 cname1=request.getParameter("x");
 pwd1=request.getParameter("y");
 try
 {
    pst1=con.prepareStatement("insert into login values(?,?,?)");
    pst1.setString(1,cname1);
	pst1.setString(2,pwd1);
	pst1.setString(3,type);
	pst1.executeUpdate();
    pst1.close();
    out.println("<br><b><font size=8 color=#2271A0><center>Company added successfully </b></font>");
 }
  catch(Exception e)
 {
  out.println(e);
   out.println("<center><h2><br><br><br><font color=#2271A0>Company already exists");
 }
%>
































