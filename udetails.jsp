<%@ include file="common.jsp" %>
<html>
<head>
<script language="javascript">
function validate1()
{
	var apos=f1.cname5.value.indexOf("@");
     var dotpos=f1.cname5.value.lastIndexOf(".");
	 var cname2=f1.cname2.value;
      if(f1.cname1.value=="")
      {
        alert("First name Should not be null");
        f1.cname1.focus();
	return false;
      }

for(var i=0;i<f1.cname1.length;i++)
{
     if((f1.cname1.charCodeAt(i)<65 || f1.cname1.charCodeAt(i)>90) && (f1.cname1.charCodeAt(i)<97 || f1.cname1.charCodeAt(i)>122))
      {
        alert("First name contain characters only");
        f1.cname1.value="";
	f1.cname1.focus();
	return false;
      }
}
   if(f1.cname2.value=="")
      {
        alert("Employee id should not be null");
        f1.cname2.focus();
	return false;
      }
	for(var j=0;j<cname2.length;j++)
	{
     if((cname2.charCodeAt(j)<65 || cname2.charCodeAt(j)>90) && (cname2.charCodeAt(j)<97 || cname2.charCodeAt(j)>122))
      {
        alert("Employee id should contain characters only");
        f1.cname2.value="";
		f1.cname2.focus();
		return false;
      }
	}

 if(f1.cname3.value=="")
 {
        alert("Branches should be entered");
        f1.cname3.focus();
		return false;
 }
if(f1.cname4.value=="")
	{
	alert("Enter number of students");
	f1.cname4.focus();
	return false;
	}
if(isNaN(f1.cname4.value))
	{
		alert("This field should contain integers only");
		f1.cname4.value="";
		f1.cname4.focus();
		return false;
	}


if(f1.cname5.value=="")
      {
        alert("Email Id should not be null");
       	f1.cname5.focus();
	return false;
      }
     if((apos==0||apos<0)&&(dotpos==0||dotpos<0))
	{
		alert("Enter valid Email Id");
		f1.cname5.value="";
		f1.cname5.focus();
 		return false;
	}
    else if(apos>=dotpos)
	{
	 alert("Enter valid Email Id");
	 f1.cname5.value="";
	 f1.cname5.focus();
 	 return false;
	}
	if(f1.cname6.value=="")
	{
		alert("Contact number should not be null");
		f1.cname6.focus();
		return false;
	}
	if(isNaN(f1.cname6.value))
	{
		alert("This field should contain integers only");
		f1.cname6.value="";
		f1.cname6.focus();
		return false;
	}
	if(f1.cname7.value=="")
	{
		alert("Please enter any website address");
		f1.cname7.focus();
		return false;
	}
	if(f1.cname8.value=="")
		{
		alert("Please enter address");
		f1.cname8.focus();
		return false;
	}
	if(f1.cname9.value=="")
	{
		alert("Enter the established year of the college");
		f1.cname9.focus();
		return false;
	}
	if(isNaN(f1.cname9.value))
	{
		alert("This field should contain integers only");
		f1.cname9.value="";
		f1.cname9.focus();
		return false;
	}
 return true;
 }
</script>
</head>
<body background="ob018.jpg">
<%@page import="java.sql.*"%>
<%!
ResultSet rs=null;
Statement stmt=null;
String sid1;
%>
<%
   HttpSession ses=request.getSession();
	sid1=(String)ses.getAttribute("sid");
if(sid1.equals("admin"))
	 {
  try
    {


    stmt=con.createStatement();
     rs=stmt.executeQuery("select cname,empid,branches,nos,email,contactno,web,address,estyear from administrator" );
    while (rs.next())
	{%>
        <form name=f1 onsubmit="return validate1()" method="post"	action="cdetails.jsp">
     <u><font size="5" color="2271A0">Update Details:</font></u></font><pre><center>
	 <font size="4"><b>

      College Name   <input type="text" name="cname1" value="<%=rs.getString(1)%>" size="20">
 	Employee ID    <input type="text" name="cname2" value="<%=rs.getString(2)%>" size="20">
	Branches       <input type="text" name="cname3" value="<%=rs.getString(3)%>" size="20">
	No Of Students <input type="text" name="cname4" value="<%=rs.getString(4)%>" size="20">
	Email ID       <input type="text" name="cname5" value="<%=rs.getString(5)%>" size="20">
	Contact No     <input type="text" name="cname6" value="<%=rs.getString(6)%>" size="20">
	Web Address    <input type="text" name="cname7" value="<%=rs.getString(7)%>" size="20">
	Address        <input type="text" name="cname8"  value="<%=rs.getString(8)%>" size="20">
	                    EstablishedYear<input type="text" name="cname9" value="<%=rs.getString(9)%>" size="20">
	</pre>
   <pre>              <input type="submit" value="update"></pre></pre>
   <pre>&nbsp;</pre>
   <pre>             </pre></font>

     <% }
    }
  catch(Exception e)
   {
    out.println(e);
   }
	}
	else
	{
	  out.println("<center><br><h3><font color=#2271A0>U dont have privilage to update</h3>");
	}
%></body></html>































