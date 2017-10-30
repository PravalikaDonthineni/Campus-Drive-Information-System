<%
String sid1=null;
HttpSession ses=request.getSession();
	sid1=(String)ses.getAttribute("sid");
  if(!(sid1.equals("NULL")))
	 {%>
<html>
<head>
<title>
Change Password
</title>
<script type="text/javascript">

function change2()
{


 var cpswd=f3.cpswd.value;
 var ncpswd1=f3.ncpswd1.value;
 var ncpswd2=f3.ncpswd2.value;



  if((cpswd.length==" ") || (cpswd.length<6))
   {
   alert("Password should contain atleast 6 characters");
   }


  if((ncpswd1.length==" ") || (ncpswd1.length<6))
   {
   alert("New Password should contain atleast 6 characters");
   }


   if((ncpswd2.length==" ") || (ncpswd2.length<6))
   {
   alert("New Password should contain atleast 6 characters");
   }

}
</script>
</head>
<body background="ob018.jpg">
<%@page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*"%>
<%!
String sid=null,sid1=null;
%>
<%
try
   {
	%>


<form name="f3" action="newcpswd.jsp">
<u><font color="#2271A0"" size="5" align="left">Change Password:</u></font>
<center><pre>
<B><font size="3">

Enter current password: <input type="password" size="20" name="cpswd"><br>
Enter new password:     <input type="password" size="20" name="ncpswd1"><br>
Confirm new password:   <input type="password" size="20" name="ncpswd2"><br>
<br><br><br><br><br>
<%}
catch(Exception e)
{
 out.println(e);
 }
 %>

<input type="submit" value="Change password" name="chngpwd" onclick="change2()">
</B></center>
</font>
</form>
</pre>
</body>
</html>
<%
}
else
out.println("<center><br><h3><font color=#2271A0>U dont have privilage to change</h3>");
%>































