<%@ include file="common.jsp" %>
<body background="ob018.jpg">
<font color="2271A0"><u><h2>Student Details</u> :</h2>
   <%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%!

 Statement stmt=null,stmt1=null,stmt2=null;
 ResultSet rs=null,rs1=null,rs2=null;
 String br=null,yr=null,aggr=null,aggri=null,qry=null,a=null,hno=null,cc=null;
 int i=0,agg=0,yr1=0,yr3,j=0;
 StringTokenizer stk=null;
 String temp=null,yr2=null,hno1=null,backlog=null;
  %>
 <%
 agg=Integer.parseInt(request.getParameter("aggr"));
 br=request.getParameter("branch");
 backlog=request.getParameter("backlog");
 temp=request.getParameter("passedout");
 //temp=String.parseString(yr1);
 yr=temp.substring(2,4);
 yr1=Integer.parseInt(yr);
 yr1=yr1-4;
  //yr=String.parseString(yr1);
  //out.println(yr);
  //out.println(br);
  //out.println(agg);
try
    {
	 %><br><br><center>
	 <pre><h5><table border="1"><thead><tr><td>Sno</td><td widht="20">   Student Name   </td><td>HallTicket No  </td><td> Backlogs </td></tr></thead><tbody></h5><font size=3 color=black><%

     stmt=con.createStatement();
     stmt1=con.createStatement();
    stmt2=con.createStatement();
		 qry="select fname,hno,backlogs from student where baggregate >="+agg+"and branch like '"+br.toLowerCase()+"' and backlogs <='"+backlog+"' and approved = '1' and s=0";
System.out.println("<<<<<>>>>>"+qry);
		 rs1=stmt2.executeQuery(qry);
	     while(rs1.next())
	       { j++;%> <tr><td valign="center"> <%out.println(++i);%></td><td><%
	          out.println("  "+rs1.getString(1)+" ");%></td><td valign="center"><%a=rs1.getString(2);out.println("  "+a+"  ");%></td><td><a href="cv1.jsp?id=<%=a%>">CV</a></td><td><%out.println(" "+rs1.getString(3));%></td></tr><%
	        }


	    i=0;out.println("Total no of students..."+j);j=0; %>
	<tr>
	<td align=center><br><br>
	<a href="rsdetails1.jsp"><font color="#2271A0">back</font></a>
	</td></tr>
	</tbody></table>
	<%

  }
catch(Exception e)
{
  out.println(e);
}%>


































