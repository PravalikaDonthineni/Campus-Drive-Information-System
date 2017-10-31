<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> New Document </TITLE>
 </HEAD>


<%@ include file="common.jsp" %>
<body background="ob018.jpg">

<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*"%>
<%!

Statement stmt=null;
ResultSet rs=null;
String id,ns;
%>
<%
   try
   {

    stmt=con.createStatement();
	rs=stmt.executeQuery("select id,nosr from recruiter");
%>
	<form name="f" method="post"><center>
    <pre>   <h1><u><font color="#2271A0">Achievements</u>:</font></h1><pre>
           <center>  <table border=1> <thead><tr><th width=80><h3>Company</th><th><h3>No.ofStudentsRecruited </th></tr></thead></font> </h2><tbody>
<%
	   while(rs.next())
      { id=rs.getString(1);
		ns=rs.getString(2);

	%>        <tr><td align=center> <%=id%></td><td>
      <center>     <a href = "studentdetails.jsp?id=<%=id%>"><%=ns%> </a> </td></tr></font><%   }%>
	  </tbody> </table><br><br> <a href="achievements.jsp"><font color="2271A0">back</a>
	  <%

                }
  catch(Exception e)
   {
    out.println(e);
   }
%>

</body>
</HTML>
































