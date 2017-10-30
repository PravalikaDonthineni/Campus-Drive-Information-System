<%@ include file="common.jsp" %>
<html>
<body background="ob018.jpg">
<%@page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*"%>
<%!

 ResultSet rs=null;
 String lname,hnum,snam,br,byr,bagg,boi,ssc,dat,mon,yr,contact,email,que,ans;
 String sid=null,sid1=null;
 int i;
 %>
<%
 
 snam=request.getParameter("sname2");
 br=request.getParameter("sname3");
 byr=request.getParameter("sname4");
 bagg=request.getParameter("sname5");  
 boi=request.getParameter("sname6");
 ssc=request.getParameter("sname7");
 dat=request.getParameter("sname8");
 mon=request.getParameter("sname9");
 yr=request.getParameter("sname10");
 email=request.getParameter("sname11");
 contact=request.getParameter("sname12");
 lname=request.getParameter("sname13"); 
 que=request.getParameter("sname14"); 
 ans=request.getParameter("sname15"); 
%>
<%
 try
    {
     HttpSession ses=request.getSession();
	 sid1=(String)ses.getAttribute("sid");

     st1=con.createStatement();
String str="update student set  fname='"+snam+"', branch='"+br+"', byear='"+byr+"',baggregate='"+bagg+"',inter='"+boi+"',tenth='"+ssc+"' , day='"+dat+"' ,month='"+mon+"' ,year='"+yr+"',contactno='"+contact+"',email='"+email+"',lname='"+lname+"',question='"+que+"',answer='"+ans+"',approved='0'  where hno='"+sid1+"'";
System.out.println("________________"+str);
     i=st1.executeUpdate(str);%>

	 <center><font color="#2271A0" size="5"><br><br><br><br>UPDATED SUCCESSFULLY</font></center>
	<br><br><br>  <center><a href="cv.html">Fill Ur CV....</font></a> 
	  <%
     }
 catch(Exception e)
  {
   out.println(e);
  }
%>
</html>
     

































