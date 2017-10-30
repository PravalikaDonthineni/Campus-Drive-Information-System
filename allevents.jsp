<%@ include file="common.jsp" %>
<html><body background="ob018.jpg">
<%@ page import="java.sql.*" %>
<%!

   Statement stmt=null;
   ResultSet rs=null,rs1=null;
   String dat=null,sid1=null,qry=null,da=null;
   %>
  <%


	 %>
	 <h2>Events</H2>
	 <%
    try{


	   st=con.createStatement();
	    stmt=con.createStatement();
       qry="select * from event order by date1 desc";
	   	   rs=st.executeQuery(qry);
        rs1=stmt.executeQuery("select to_char(date1,'dd-MON-yy  hh:mm:ss') from event order by date1 desc");
	%>
<center>

<form action="eventdelete.jsp">

<table border=1 width="90%" cellspacing=5 cellpadding=3><tr>
<td><h3>Select</h3></td><td>	      <h3> date	</h3></td><td> <h3> subject</h3></td></tr>
    <%int i=1;
	   while(rs.next())
	   { rs1.next();
		dat=rs1.getString(1);
		String xy=rs.getString(4);
		//out.println(dat);
      %>
	<tr><td><input type="checkbox" name="ck<%=i%>" value="<%=xy%>"> </td><td><%=rs.getString(3)%> &nbsp;</td>
	  <td> <a href="eventcontent1.jsp?msgid=<%=xy%>"> <%=rs.getString(1)%> </a>&nbsp;</td></tr>
	  <% i=i+1; }




	  }
	  catch(Exception e)
	  {
	    out.println(e);
      }

	  %>

	  </table>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="DELETE"></p>
<p>&nbsp;</p>

</form>

<center><a href="addeve.jsp"><font color="#2271A0">back</font></a>

 </body>
	  </html>































