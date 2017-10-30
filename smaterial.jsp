<%
String sid1=null;
HttpSession ses=request.getSession();
	sid1=(String)ses.getAttribute("sid");
  if(!(sid1.equals("NULL")))
{%>
<html>
<head>
<title>
Search Material
</title>
</head>
<body background="ob018.jpg">

<form name="f1" method="post" action="smat.jsp">
<u><font color="#2271A0"" size="5" align="left">Search for material:</u></font>
<center><pre>
<b><font size="4">
Topic Name: <select name="s1">
<option>Aptitude</option>
<option>Reasoning</option>
<option>Technical</option>
<option>Verbal</option>
<option>CampusPapers</option>
<option>CompanyProfiles</option>
</select><br>
<br>
    <input type="submit" value="search">
</font></b>
</center>
</form>
</pre>
</body>
</html>
<%
}
else
out.println("<center><br><h3><font color=#2271A0>U dont have privilage to change</h3>");
%>































