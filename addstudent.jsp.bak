<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
 <HEAD>
  <TITLE> Add Student </TITLE>
  <META NAME="Generator" CONTENT="Microsoft FrontPage 5.0">
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">

<script language="javascript">
function validate()
{
var len=document.f1.s.length;


b=false;
for(var i=0;i<len;i++)
{

if(document.f1.s[i].checked)
{
alert("Your Have selected Category "+document.f1.s[i].value)

b=true;
}
}
if(!b)
{
alert("Choose  Any  Flower  Category");
return false;
}

}
</script>


 </HEAD>
<%@ page import="javax.servlet.http.*"%>
<%!String sid1=null;%>
 <BODY background="ob018.jpg">
  <font color="#2271A0" size=5><u>Add Student</u>:</font>
  <form name="f1" method="post" action="addstu.jsp" onsubmit="return validate()">
    <%
  HttpSession ses=request.getSession();
	sid1=(String)ses.getAttribute("sid");
  if(sid1.equals("admin"))
	{%> <center>
  <table border=0>
  <tr><td colspan=2><font size="4"><b><input type="radio" name="s" value="single">To enter single student:</b></font></td></tr>
  <tr><td align=right><b><br>Hall Ticket No </b></td><td>
  <br><input type="text" name="name" size="20"></td></tr>
  <tr rowspan=2><td colspan=2><b><font size="4"><br><br><input type="radio" name="s" value="multiple">To enter multiple  students:</font><br></b></td></tr>
  <tr><td><br><b>&nbsp;&nbsp;From hno:<input type="text" name="name1" size="20"></td>
  <td><br><b>To hno:<input type="text" name="name2" size="20"></td></tr>
  <tr rowspan=3><td align=right><b><br><br>Password</b></td> 
  <td><br><br><input type="text" name="pswd" value="guest1" size="20"></td></tr> 
  <tr rowspan=2><td colspan=2 align=center><br> 
  <input type=submit value="  Add  ">
  <input type=reset value=" ReSet ">
  </td></tr>
  </table>
  <% }else
	 {
      out.println("<center><br><h3><font color=#2271A0>U dont have privilage to add</h3>");
	 }%>
 </BODY>
</HTML>































