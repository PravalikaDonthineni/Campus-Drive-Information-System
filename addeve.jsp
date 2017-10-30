
<HTML>
 <HEAD>
  <TITLE> New Document </TITLE>
  <META NAME="Generator" CONTENT="Microsoft FrontPage 5.0">
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">
  <script language="javascript">
   var s=f1.event.value;
  function validate()
	{

	 if(s.equals("Add the event here..."))
	  {
       alert("Add event properly");
	   return false;
	  }
	  return true;
	}
  </script>
 </HEAD>
<%
String sid1=null;
HttpSession ses=request.getSession();
	sid1=(String)ses.getAttribute("sid");
  if(!(sid1.equals("NULL")))
{%>
 <BODY>
  <html>
<head>
<title>Add Event</title>
</head>
<body background="ob018.jpg">
<font color="2271A0" size=5><b><u>Add Event</u>:</b></font>
<form name="f1" method="post" action="addevent1.jsp">
<center><pre> subject:  <input type="text" name="subj" value="subject" size="20"><br>
<textarea rows=10 cols=50 name="event">Add the event here...</textarea></pre>

<center>
<input type="submit" value="   ADD   " name="add" onClick="return validate()">
<br><br>
<a href="allevents.jsp">View Events</a>
</center>
</form>
</body>
</html>


 </pre></pre></pre></BODY>
</HTML>
<%
}
else
out.println("<center><br><h3><font color=#2271A0>U dont have privilage to change</h3>");
%>
































