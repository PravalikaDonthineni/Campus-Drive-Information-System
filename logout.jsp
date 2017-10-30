<html>
<head>
<title>
Logout Page
</title>
<body background="ob018.jpg">
<center><font color="#2271A0"" size="8">
<br>
<br>
<br><%
String sid1=null;
HttpSession ses=request.getSession();
sid1=(String)ses.getAttribute("sid");
ses.removeAttribute("sid");
sid1=(String)ses.getAttribute("sid");
//ses.destroy();
//out.println(sid1);
%>You have successfully logged out.

<br>

<a href="ahome1.html"><font size="4">Return to Home</font></a>
</font>
</center>
</pre>
</body>
</html>































