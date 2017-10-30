<%@ include file="common.jsp" %>
<html>
<body background="ob018.jpg">
<%@page import="java.sql.*"%>
<%!
 Statement stmt=null;
 ResultSet rs=null;
 String mn,r,r1;
 String mat=null;
%>
<%
 mn=request.getParameter("s1");
 try
 {

     stmt=con.createStatement();
     rs=stmt.executeQuery("select * from material where matname='"+mn+"'");
	 while(rs.next())
	 {

		  r=rs.getString(2);
          mat="material/"+r;
		  r1=rs.getString(1);
		  %>
	      <a href="<%=mat%>"><%=r1%></a><br>

	 <%
	 }
	 %>


	   <%
 }
catch(Exception e)
  {
   out.println(e);
  }
%>































