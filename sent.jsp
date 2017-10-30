<%@ include file="common.jsp" %>
<html><body background="ob018.jpg">
<%@ page import="java.sql.*" %>
<%!

   ResultSet rs=null;
   String msid=null,sid1=null,qry=null,msgto=null;
   %>
  <%
    String sid1=(String)session.getAttribute("sid");

	 //out.println(sid1);%><h2>SENT MAILS::</h2><%
    try{


	   st=con.createStatement();
        qry="select msgfrom,msgto,subject,msg,to_char(date1,'dd-MON-YY'),msgid,inboxstatus,sentstatus from mail where msgfrom='"+sid1+"'";
		 //and sentstatus="+1+"";

	   rs=st.executeQuery(qry);
    %>
<center>

<form action="maildelete.jsp">

<table border=1 width=90% cellspacing=5 cellpadding=3>
<tr><td><input type="hidden" name="inb" value=0></td></tr>
<tr><td><input type="hidden" name="snb" value=1></td></tr>
<tr>
<td><h3>Select</h3></td><td><h3>Date::</h3> </td><td>	      <h3> To::	</h3></td><td> <h3>        Subject::</h3></td></tr>
    <%
	   while(rs.next())
	   {

	     if(rs.getInt(8)==0)
		   {

			 continue;
		   }
		msid=rs.getString(6);
      %>
	<tr><td> <input type="checkbox" name="ck" value="<%=msid%>"> </td><td><%=rs.getString(5)%></td><td><%out.println(rs.getString(2));%> &nbsp;</td>
	  <td> <a href="mailcontent1.jsp?msgid=<%=msid%>"> <%=rs.getString(3)%> </a>&nbsp;</td></tr>
	  <%  }
	  }
	  catch(Exception e)
	  {
	    out.println("UR SENT BOX IS EMPTY");
      }

	  %>
	  <br>
	  </table><input type="submit" value="DELETE">

</form>
	  </body>
	  </html>































