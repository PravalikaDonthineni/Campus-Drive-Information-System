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
	rs=stmt.executeQuery("select hno,fname,branch,byear,baggregate,inter,tenth,day,month,year,backlogs from student where hno='"+sid1+"'");
	while(rs.next())
           {%>
         <form name="f" method="post" action="sdetails.jsp">
   <u><font color="#2271A0"" size="5" align="left">Check Details:</font></u>
<center>

<table>

   <tr><td><font size="4">Hallticketno:</td></font>       <td><font size="4"><%=rs.getString(1)%></font></td></tr>
   <tr><td><font size="4">Name: </td></font>              <td><font size="4"><%=rs.getString(2)%></font></td></tr>
   <tr><td><font size="4">Branch:</td></font>             <td><font size="4"><%=rs.getString(3)%></font></td></tr>
   <tr><td><font size="4">Year:</td></font>               <td><font size="4"><%=rs.getString(4)%></font></td></tr>
   <tr><td><font size="4">B.Tech(agg):</td></font>        <td><font size="4"><%=rs.getString(5)%></font></td></tr>
   <tr><td><font size="4">Backlogs:</td></font>        <td><font size="4"><%=rs.getString(11)%></font></td></tr>
   <tr><td><font size="4">Inter:</td></font>              <td><font size="4"><%=rs.getString(6)%></font></td></tr>
   <tr><td><font size="4">Tenth:</td></font>              <td><font size="4"><%=rs.getString(7)%></font></td></tr>
   <tr><td><font size="4">Date of Birth:</td></font>   <td><font size="4"><%=rs.getString(8)%>/<%=rs.getString(9)%>/<%=rs.getString(10)%></font></td></tr>
    <tr><td colspan=2 align=center><font size="4"><a href="cv2.jsp">CV</a></td></tr>

	</table>


     <% }
    }
  catch(Exception e)
   {
    out.println(e);
   }
%></body></html>
<%
}
else
out.println("<center><br><h3><font color=#2271A0>U dont have privilage to change</h3>");
%>































