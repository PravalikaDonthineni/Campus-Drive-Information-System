<%@ include file="common.jsp" %>
<%@page import = "java.sql.*"%>
<%!
 ResultSet rs=null;
 String eve;
 %>
 <%
 eve=request.getParameter("event");
 try
 {

  stmt=con.createStatement();
  stmt.executeUpdate("update administrator set event='"+eve+"'");
  out.println("<br><br><br><br><b><font size=5 color=#2271A0><center>"+"Event added successfully </b></font>");
 }
 catch(Exception e)
 {
   out.println(e);
 }
%>
































