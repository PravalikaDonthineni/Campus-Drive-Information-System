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
	<center><table border="1" width=500><thead><tr><th><font color="black"><h3>Hno</th><th><font color="black"><h3>Name</th>
	<th><font color="black"><h3>Branch</th><th><font color="black"><h3>Company</th><th><font color="black"><h3>Selected Date</th></tr>
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
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 con=DriverManager.getConnection("jdbc:odbc:train","train","train");
 stmt=con.createStatement();
 String qry="select hno,companyid,to_char(date1,'dd-mm-yyyy') from results";
 //where to_char(date1,'dd-mon-yyyy') between '01-JAN-2006' and '01-JAN-2007'";
 rs=stmt.executeQuery(qry);
 out.println("      "+"<center><b><font size=4>From  "+dat+"  to  "  +dat1+"</font></b>");
 boolean flag1=false,flag2=false;
 int c=0;
 while(rs.next())
	{
	 dat2=rs.getString(3);
	 d12=dat2.substring(0,2);
	 m12=dat2.substring(3,5);
	 yr12=dat2.substring(6,10); 

    d2=Integer.parseInt(d12);
	m2=Integer.parseInt(m12);
	yr2=Integer.parseInt(yr12);
	if((yr2>=yr)||(yr2<=yr1))
     {  
	   if(yr==yr2)
		 {   if(m2>=m)
	           {
		          if((m2==m))
				   {   if(d2>=d)
				       {
					    flag1=true;
						//out.println("ok1");
						}
					    else
					   {continue;}
					}
				  else{
					  flag1=true;
					 // out.println("ok2");
				      }
			     }else 
			       { continue;}
		  }	  
	   else if(yr2>yr)
		 {   
			 flag1=true;
			 //out.println("ok3");

         }else continue;   
       if(yr1==yr2)
		   {   if(m2<=m1)
	           {
		          if((m2==m1))
				   {   if(d2<=d1)
				       {
					    flag2=true;
						//out.println("by1");
						}
					    else
					   {continue;}
					}
				  else{
					  flag2=true;
					 // out.println("by2");
				      }
			     }else 
			       { continue;}
		  }	  
	   else if(yr2<yr1)
		 {   
			 flag2=true;
			 //out.println("by3");

         }else continue;  
	 }
		   
		   if(flag1&&flag2)
		 {    c++;
			   id=rs.getString(1);
	          comp=rs.getString(2);
	                     st=con.createStatement();
String str="select hno,fname,branch from student where hno='"+id+"'";
System.out.println("---------"+str);
	         rs1=st.executeQuery(str);       
             while(rs1.next())
	          {%>
	            <tr><td><font color="black"> <%=rs1.getString(1)%></td>
	             <td><font color="black"> <%=rs1.getString(2)%></td>
	              <td><font color="black"> <%=rs1.getString(3)%></td>
	              <td><font color="black"> <%=comp%></td>
				  <td><font color="black"> <%=dat2%></td></tr><%
			  }
		 }
		
	 }if(c==0)
		out.println("<tr><td colspan=4><h2>No results available</h2></td></tr>");
					  
					  
					  
					  
					  
					  
					  
					  
					  
					  /*//out.println("hi");
	          
              <%}  */
           
          
      
  
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































