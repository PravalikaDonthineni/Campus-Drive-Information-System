<%@ include file="common.jsp" %>
<body background="ob018.jpg">
<%@page import = "java.sql.*"%>
<%!
 Statement stmt=null;
 ResultSet rs=null,rs1=null,rs2=null,rs3=null,rs4=null,rs5=null,rs6=null;
 Statement pst,pst1,pst2,pst3,pst4,pst5,pst6;
 String sid1=null,obj=null,achieve=null,strength=null,place=null,date=null,exam1=null,uni1=null,year1=null,os=null,lang=null,langs=null,concepts=null,script=null,dbase=null,exam2=null,uni2=null,year2=null,exam3=null,uni3=null,year3=null,fname=null,nation=null,hobby=null,dob=null,gender=null,mstatus=null,f1name=null,lname=null,address=null,contactno=null,email=null,inter=null,tenth=null,baggregate=null;
 %>
 <%
 try
 {
 sid1=request.getParameter("id");
 pst=con.createStatement();
 //out.println("hi2");
 rs=pst.executeQuery("select * from cv where hno='"+sid1+"'");
 while(rs.next())
 {
 //out.println("hi3");
 obj=rs.getString(1);
 //out.println("hi4");
 achieve=rs.getString(2);
 place=rs.getString(3);
 date=rs.getString(4);
 strength=rs.getString(5);
 }
 //out.println("hi5");
 pst1=con.createStatement();
 rs1=pst1.executeQuery("select * from edu1 where hno='"+sid1+"'");
 while(rs1.next())
 {
 exam1=rs1.getString(1);
 uni1=rs1.getString(2);
 year1=rs1.getString(3);
 }
 pst2=con.createStatement();
 rs2=pst.executeQuery("select * from edu2 where hno='"+sid1+"'");
 //out.println("hi6");
 while(rs2.next())
 {
 exam2=rs2.getString(1);
 uni2=rs2.getString(2);
 year2=rs2.getString(3);
 }
 //out.println("hi7");
 pst3=con.createStatement();
 rs3=pst.executeQuery("select * from edu3 where hno='"+sid1+"'");
 while(rs3.next())
 {
 exam3=rs3.getString(1);
 uni3=rs3.getString(2);
 year3=rs3.getString(3);
 }
 //out.println("hi8");
 pst4=con.createStatement();
 rs4=pst.executeQuery("select * from technical where hno='"+sid1+"'");
 while(rs4.next())
 {
 os=rs4.getString(1);
 langs=rs4.getString(2);
 script=rs4.getString(3);
 dbase=rs4.getString(4);
 concepts=rs4.getString(5);
 }
 //out.println("hi9");

 pst6=con.createStatement();
 rs6=pst.executeQuery("select * from student where hno='"+sid1+"'");
 while(rs6.next())
 {
 f1name=rs6.getString(2);
 lname=rs6.getString(3);
 address=rs6.getString(9);
 contactno=rs6.getString(11);
 email=rs6.getString(10);
 inter=rs6.getString(14);
 tenth=rs6.getString(13);
 baggregate=rs6.getString(12);
 }
 pst5=con.createStatement();
 rs5=pst.executeQuery("select * from personal where hno='"+sid1+"'");
 while(rs5.next())
 {
 fname=rs5.getString(1);
 dob=rs5.getString(2);
 lang=rs5.getString(5);
 nation=rs5.getString(6);
 gender=rs5.getString(3);
 mstatus=rs5.getString(4);
 hobby=rs5.getString(7);
 }
 out.println("hi10");

 %>
<pre>
<center><h2><font color="#2271A0"><u>Curricculum Vittae</u></font></h2></center>

<%=f1name%>.<%=lname%>
<%=email%>
<%=contactno%>

<U><B>Objective</B></U> : <%=obj%>

<U><B>Academic Details</B></U> :

<table border="1"><thead><tr>
<td align=center>Examination</td><td align=center>Board/University</td><td align=center>year</td><td align=center>Aggregate</td></thead><tbody>
<tr><td><%=exam1%></td><td><%=uni1%></td><td><%=year1%></td><td><%=baggregate%></td></tr>
<tr><td><%=exam2%></td><td><%=uni2%></td><td><%=year2%></td><td><%=inter%></td></tr>
<tr><td><%=exam3%></td><td><%=uni3%></td><td><%=year3%></td><td><%=tenth%></td></tr>
</tbody></table>

<U><B>Technical Skills</B></U>:

Operating Systems : <%=os%>

Languages         : <%=langs%>

Scripting         : <%=script%>

DateBase          : <%=dbase%>

Concepts          : <%=concepts%>

<U><B>Achievements</B></U>: <%=achieve%>

<U><B>Strengths</B></U> : <%=strength%>

<U><B>Personal Details</B></U> :

Fathers Name : <%=fname%>

Date Of Birth: <%=dob%>

Gender       : <%=gender%>

MaritalStatus: <%=mstatus%>

Languages    : <%=lang%>

Nationality  : <%=nation%>

Hobbies      : <%=hobby%>
Place:<%=place%>

Date :<%=date%>


</pre>
</form>
<%
}
  catch(Exception e)
 {
   out.println(e);
 }
%>































