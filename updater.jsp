<%@ include file="common.jsp" %>
<%
String sid1=null;
HttpSession ses=request.getSession();
sid1=(String)ses.getAttribute("sid");
if(!(sid1.equals("NULL")))
{%>
<html>
<head>
<title>Training and Placement.com</title>
<script language="JavaScript" type="text/JavaScript" src="images/jsfile.js"></script>
<link href="./images/my%20home.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="./images/menustyle.css" media="screen, print" />
</head>

<body  onload="update.id.focus()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" background="ob018.jpg">
<form  name="update" onsubmit="return validation2()" action="recruiter.jsp">



          <font color="#2271A0" size="5" align="center"><u>Update details:</u>:</font><font color="#FF0000" size="5" align="center"> </font>

          <font color="#FF0000" size="6" align="center">&nbsp;</font><font color="#FF0000" size="1" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font>
          <p><font size="1">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<center>
<B><font size="3">

<%
try
{


ResultSet  rs=st1.executeQuery("select * from recruiter where id='"+sid1+"'");
  rs.next();
  %>


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Employee ID:&nbsp;&nbsp;       <input type="text" size="20" name="id" value=<%=rs.getString(1)%> readonly> </font>
</b>
<p><font size="3"><b>&nbsp;&nbsp; Employee Name:&nbsp;&nbsp; </b></font>
<B><font size="3">
<input type="text" size="20" name="rname" value=<%=rs.getString(2)%>></font></b></p>
<p><font size="3"><b>&nbsp;&nbsp;&nbsp; Company Name:&nbsp;&nbsp; </b></font>
<B><font size="3">
<input type="text" size="20" name="company" value=<%=rs.getString(3)%> ></font></b></p>
<p>
<B><font size="3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Email ID:&nbsp;&nbsp;          <input type="text" size="20" name="remail" value=<%=rs.getString(4)%>>
&nbsp;&nbsp;</font></b></p>
<p>
<font size="3"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></font><B><font size="3">Contact Number:&nbsp;&nbsp;    <input type="text" size="20" name="contactno" value=<%=rs.getString(5)%>>&nbsp;&nbsp;&nbsp;</font></b></p>
<p>
<font size="3"><b>&nbsp;&nbsp;&nbsp;&nbsp; Mobile Number:&nbsp;&nbsp; </b>
</font>
<B><font size="3">
<input type="text" size="20" name="mobileno" value=<%=rs.getString(6)%>></font></b></p>
<p>
<font size="3"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Address:&nbsp;&nbsp; </b></font>
<B><font size="3">
<textarea name="address" rows="5" columns="20" cols="16" maxsize="20"><%=rs.getString(7)%></textarea></font></b></p>
<p>
<B><font size="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Website:&nbsp;&nbsp;       <input type="text" size="20" name="website" value=<%=rs.getString(8)%>></font></b></p>
<p>
<B>
&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="UPDATE">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="RESET"></p>
</b>


</form>
</font>
</body>
</html>
<%
}
catch(Exception e)
{
	out.println(e);
}
}
else
out.println("<center><br><h3><font color=#2271A0>U dont have privilage to update</h3>");

%>
































