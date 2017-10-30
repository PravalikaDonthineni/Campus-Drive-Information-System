<%@ include file="common.jsp" %>
<%
String sid1=null;
HttpSession ses=request.getSession();
	sid1=(String)ses.getAttribute("sid");
  if(!(sid1.equals("NULL")))
	 {%>
<html>
<body background="ob018.jpg">
<%@page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*"%>
<%!

Statement stmt=null;
ResultSet rs=null;
String sid=null,sid1=null;
%>
<%

   try
   {


    stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select ccode,cname,branches,nos,email,contactno,web,address from administrator ");
	while(rs.next())
           {%>
         <form name="f" method="post">
   <u><font color="#2271A0"" size="5" align="left">College Details:</font></u><center>
   <br>
<table>

   <tr><td><font size="4">College code:</td></font>       <td><font size="4"><%=rs.getString(1)%></font></td></tr>
   <tr><td><font size="4">College name: </td></font>      <td><font size="4"><%=rs.getString(2)%></font></td></tr>
   <tr><td><font size="4">Branches:</td></font>           <td><font size="4"><%=rs.getString(3)%></font></td></tr>
   <tr><td><font size="4">No os students:</td></font>     <td><font size="4"><%=rs.getString(4)%></font></td></tr> <tr><td><font size="4">Email ID:</td></font>           <td><font size="4"><%=rs.getString(5)%></font></td></tr>
   <tr><td><font size="4">Contact no:</td></font>         <td><font size="4"><%=rs.getString(6)%></font></td></tr>
   <tr><td><font size="4">Website:</td></font>            <td><font size="4"><%=rs.getString(7)%></font></td></tr>
   <tr><td><font size="4">Address:</td></font>            <td><font size="4"><%=rs.getString(8)%></font></td></tr>

	</table>


     <% }
    }
  catch(Exception e)
   {
    out.println(e);
   }
%></body></html>
<%}
else
out.println("<center><br><h3><font color=#2271A0>U dont have privilage to change</h3>");
%>































