<html>
<body background="ob018.jpg">
<form name="f1" method="get" action="cv.jsp">
<pre>
<%!
 Connection con=null;
 Statement stmt=null;
 ResultSet rs=null,rs1=null,rs2=null,rs3=null,rs4=null,rs5=null,rs6=null;
 Statement pst,pst1,pst2,pst3,pst4,pst5,pst6;
 String sid1=null,obj=null,achieve=null,strength=null,place=null,date=null,exam1=null,uni1=null,year1=null,os=null,lang=null,langs=null,concepts=null,script=null,dbase=null,exam2=null,uni2=null,year2=null,exam3=null,uni3=null,year3=null,fname=null,nation=null,hobby=null,dob=null,gender=null,mstatus=null,f1name=null,lname=null,address=null,contactno=null,email=null,inter=null,tenth=null,baggrigate=null;
 %>
<h2><font color="#2271A0">Fill Ur Details.....</font></h2>
<%
 try
 {
  HttpSession ses=request.getSession();
	 sid1=(String)ses.getAttribute("sid");
 DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","train","train");
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
 %>
<U><B>Objective</B></U> :

<textarea rows=10 cols=70 name="obj"><%=obj%></textarea>

<U><B>Academic Details</B></U> :

<table border="1"><thead><tr>
<td align=center>Examination</td><td align=center>Board/University</td><td align=center>year</td></thead><tbody>
<tr><td><input type="text" name="btech" value="<%=exam1%>"></td><td><input type="text" name="btechboard" value="<%=uni1%>"></td><td><input type="text" name="btechyear" value="<%=year1%>"></td></tr>
<tr><td><input type="text" name="inter" value="<%=exam2%>"></td><td><input type="text" name="interboard" value="<%=uni2%>"></td><td><input type="text" name="interyear" value="<%=year2%>"></td></tr>
<tr><td><input type="text" name="tenth" value="<%=exam3%>">></td><td><input type="text" name="tenboard" value="<%=uni3%>"></td><td><input type="text" name="tenyear" value="<%=year3%>"></td></tr></tbody></table>

<U><B>Technical Skills</B></U>:

Operating Systems : <input type="text" name="os" value="<%=os%>">

Languages         : <input type="text" name="langs" value="<%=langs%>">

Scripting         : <input type="text" name="script" value="<%=script%>">

DateBase          : <input type="text" name="dbase"  value="<%=dbase%>">

Concepts          : <input type="text" name="concepts" value="<%=concepts%>">

<U><B>Achievements</B></U>:

<textarea rows=10 cols=70 name="achieve"><%=achieve%></textarea>

<U><B>Strengths</B></U> :

<textarea rows=10 cols=70 name="strength"><%=strength%></textarea>

<U><B>Personal Details</B></U> :

Fathers Name : <input type="text" name="fname" value="<%=fname%>">

Date Of Birth: <input type="text" name="dob" value="<%=dob%>">

Gender       : <input type="text" name="gender" value="<%=gender%>">

MaritalStatus: <input type="text" name="mstatus" value="<%=mstatus%>">

Languages    : <input type="text" name="lang" value="<%=lang%>">

Nationality  : <input type="text" name="nation" value="<%=nation%>">

Hobbies      : <input type="text" name="hobby" value="<%=hobby%>">

Place:<input type="text" name="place" value="<%=place%>">

Date :<input type="text" name="date" value="<%=date%>">

                             <input type="submit" value="submit">
<%}
catch(Exception e)
{
 out.println(e);
}%>
</pre>
</form>
</body>
</html>































