<%@ include file="common.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> New Document </TITLE>
<script type="text/javascript">
function validate()
{
d=parseInt(f.d.value);
d1=parseInt(f.d1.value);
m=parseInt(f.m.value);
m1=d=parseInt(f.m1.value);
y=parseInt(f.year.value);
y1=parseInt(f.year1.value);
if(y>y1)
{
 alert("From year should be less than To year");
 return false;
}
if((y==y1))
{
 if(m>m1)
 {
 alert("From month should be less than To month");
 return false;
 }
 else if(m==m1)
  {
   if(d>d1)
	{
     alert("From day should be less than To day");
     return false;
      }
   }
}

return true;
}
</script>
 </HEAD>

 <%@ page import="java.util.*"%>

<body background="ob018.jpg">
<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*"%>
<%!
StringTokenizer st11=null;
Statement stmt=null,stmt1=null,stmt2=null;
ResultSet rs=null,rs1=null,rs2=null;
String id,ns,yr3,br,agg;
int nosr,tot=0,yr,yr1,yr2;
%>

<%
 try
   {


    stmt=con.createStatement();
	rs=stmt.executeQuery("select nosr from recruiter");
	while(rs.next())
	   {
		nosr=Integer.parseInt(rs.getString(1));
		tot=tot+nosr;
	   }
   	stmt1=con.createStatement();
	rs1=stmt.executeQuery("select estyear from administrator");
	rs1.next();
	yr=Integer.parseInt(rs1.getString(1));
    yr2=yr;
	stmt2=con.createStatement();
	rs2=stmt.executeQuery("select to_char(sysdate,'yyyy') from dual");
	rs2.next();
	yr1=Integer.parseInt(rs2.getString(1));
%>
	<form name="f" method="post" action="achieve.jsp"><center>
    <pre>   <h1><u><font color="#2271A0">Achievements</u>:</font></h1><pre>	<br>
           <h3><b><a href="achievements1.jsp"><font color="black">Total No. Of Students  <%=tot%></font></a></b></h3>

            <%tot=0;%>
		  <p>&nbsp;</p>
          <font size=4><b>
          From:  <select name="d">
          <option selected value="01">1</option>
				<option value="02">2</option>
											  <option value="03">3</option>
										          <option value="04">4</option>
											  <option value="05">5</option>
											  <option value="06">6</option>
											  <option value="07">7</option>
											  <option value="08">8</option>
										          <option value="09">9</option>
											  <option value="10">10</option>
											  <option value="11">11</option>
											  <option value="12">12</option>
											  <option value="13">13</option>
										          <option value="14">14</option>
											  <option value="15">15</option>
											  <option value="16">16</option>
											  <option value="17">17</option>
											  <option value="18">18</option>
										          <option value="19">19</option>
											  <option value="20">20</option>
											  <option value="21">21</option>
											  <option value="22">22</option>
											  <option value="23">23</option>
										          <option value="24">24</option>
											  <option value="25">25</option>
											  <option value="26">26</option>
											  <option value="27">27</option>
											  <option value="28">28</option>
										          <option value="29">29</option>
											  <option value="30">30</option>
											  <option value="31">31</option>
									</select> <select name="m"><option selected value="1">1</option>
									           <option value="2">2</option>
											  <option value="3">3</option>
										          <option value="4">4</option>
											  <option value="5">5</option>
											  <option value="6">6</option>
											  <option value="7">7</option>
											  <option value="8">8</option>
										          <option value="9">9</option>
											  <option value="10">10</option>
											  <option value="11">11</option>
											  <option value="12">12</option>
									</select> <select name="year"><option selected value=<%=yr%>><%=yr%></option>
									          <%while(yr<yr1){%>
                                              <option value=<%=yr+1%>><%=++yr%></option><%}%>
									</select>              To:  <select name="d1"><option selected value="01">1</option>
											   <option value="02">2</option>
											  <option value="03">3</option>
										          <option value="04">4</option>
											  <option value="05">5</option>
											  <option value="06">6</option>
											  <option value="07">7</option>
											  <option value="08">8</option>
										          <option value="09">9</option>
											  <option value="10">10</option>
											  <option value="11">11</option>
											  <option value="12">12</option>
											  <option value="13">13</option>
										          <option value="14">14</option>
											  <option value="15">15</option>
											  <option value="16">16</option>
											  <option value="17">17</option>
											  <option value="18">18</option>
										          <option value="19">19</option>
											  <option value="20">20</option>
											  <option value="21">21</option>
											  <option value="22">22</option>
											  <option value="23">23</option>
										          <option value="24">24</option>
											  <option value="25">25</option>
											  <option value="26">26</option>
											  <option value="27">27</option>
											  <option value="28">28</option>
										          <option value="29">29</option>
											  <option value="30">30</option>
											  <option value="31" >31</option>
									</select> <select name="m1"><option selected value="1">1</option>
									          <option value="2">2</option>
											  <option value="3">3</option>
										          <option value="4">4</option>
											  <option value="5">5</option>
											  <option value="6">6</option>
											  <option value="7">7</option>
											  <option value="8">8</option>
										          <option value="9">9</option>
											  <option value="10">10</option>
											  <option value="11">11</option>
											  <option value="12">12</option>
									</select> <select name="year1"><option selected value="<%=yr1%>"><%=yr1%></option>
									        <%while(yr2<yr1){%>
                                              <option value="<%=yr2%>"><%=yr2++%></option><%}%>
									</select>
									</font></b>
									<br>
           <input type="submit" value="  submit  " onClick="return validate()">    <%


    }
  catch(Exception e)
   {
    out.println(e);
   }
%>

</form></pre></body>
</HTML>































