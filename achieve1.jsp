<html><body background="ob018.jpg">
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%!
 StringTokenizer st1=null;
 Connection con=null;
 Statement stmt=null,st=null;
 ResultSet rs=null,rs1=null;
 String dat=null,day=null,mon,year,dat1=null,day1,mon1,year1,id,comp,dat2=null;
 String d12,m12,yr12;
 int i=1,yr,yr1,d,d1,m,m1,d2,m2,yr2;
%>
<body background="ob018.jpg">
<center><h1><u><font color="#2271A0">Selected Students</font></u></h1></center><pre>
	<center><table border="1"><thead><tr><th><font color="black"><h3>Hno</th><th><font color="black"><h3>Name</th>
	<th><font color="black"><h3>Branch</th><th><font color="black"><h3>Company</th></tr>
	</thead><tbody>
<%
day=request.getParameter("d");
//out.println(day);
d=Integer.parseInt(day);
mon=request.getParameter("m");
m=Integer.parseInt(mon);
year=request.getParameter("year");
yr=Integer.parseInt(year);
dat=day+"-"+mon+"-"+year;
day1=request.getParameter("d1");
d1=Integer.parseInt(day1);
mon1=request.getParameter("m1");
m1=Integer.parseInt(mon1);
year1=request.getParameter("year1");
yr1=Integer.parseInt(year1);
dat1=day1+"-"+mon1+"-"+year1;
try
{
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","train","train");
 stmt=con.createStatement();
 String qry="select hno,companyid,to_char(date1,'dd-mm-yyyy') from results";
 //where to_char(date1,'dd-mon-yyyy') between '01-JAN-2006' and '01-JAN-2007'";
 rs=stmt.executeQuery(qry);
 out.println(dat+"   "+dat1);
 while(rs.next())
	{
	 dat2=rs.getString(3);
	 d12=dat2.substring(0,2);
	 m12=dat2.substring(3,5);
	 yr12=dat2.substring(6,10);

     d2=Integer.parseInt(d12);
	 m2=Integer.parseInt(m12);
	 yr2=Integer.parseInt(yr12);
	 if((yr2>=yr)&&(yr2<=yr1))
		{
		  if( ((yr==yr1)&&(m2>=m)&&(m2<=m1)) || ( (yr<yr1) && ((m2>=m)||(m2<m)) && ((m2<=m1)||(m2>m1)) ) )
			{

		     id=rs.getString(1);
	          comp=rs.getString(2);
	         st=con.createStatement();
	         rs1=st.executeQuery("select hno,fname,branch from student where hno='"+id+"'");
             while(rs1.next())
	          {%>
	            <tr><td><font color="black"> <%=rs1.getString(1)%></td>
	             <td><font color="black"> <%=rs1.getString(2)%></td>
	              <td><font color="black"> <%=rs1.getString(3)%></td>
	              <td><font color="black"> <%=comp%></td></tr><%
			  }
		    }
		 }
	 }
  }
catch(Exception e)
{
 out.println(e);
}
%>
</tbody></table>
<br><br><br>
<a href="achievements.jsp"><font color="#2271A0"><h3>back</h3></a>
</body>































