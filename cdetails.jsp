<%@ include file="common.jsp" %>
<html>
<body background="ob018.jpg">
<%@page import="java.sql.*"%>
<%!

 Statement stmt=null;
 ResultSet rs=null;
 String cn,emp,br,no,cnu,ei,we,add,estyear;
 int i;
%>
<%
 cn=request.getParameter("cname1");
 emp=request.getParameter("cname2");
 br=request.getParameter("cname3");
 no=request.getParameter("cname4");
 cnu=request.getParameter("cname6");
 ei=request.getParameter("cname5");
 we=request.getParameter("cname7");
 add=request.getParameter("cname8");
 estyear=request.getParameter("cname9");
%>
<%
 try
    {

     stmt=con.createStatement();
     i=stmt.executeUpdate(" update administrator set cname='"+cn+"' , empid='"+emp+"' , branches='"+br+"', nos='"+no+"', email='"+ei+"' , contactno='"+cnu+"' , web='"+we+"' , address='"+add+"',estyear='"+estyear +"' ");
	 out.println("<br><br><br><center><font size=6 color=#2271A0>UPDATED SUCCESSFULLY</font>");

    }
 catch(Exception e)
  {
   out.println(e);
  }
%>
</html>


































