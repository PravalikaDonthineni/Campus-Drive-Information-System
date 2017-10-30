<%@ include file="common.jsp" %>
<html><body>
<body background="ob018.jpg">
<%@ page import="java.sql.*" %>
<%!

   ResultSet rs=null;
   String msid=null,sid1=null,qry=null;
   %>
  <%

    HttpSession ses=request.getSession();
	sid1=(String)ses.getAttribute("sid");

	// out.println(sid1);
	 %>

	 <h2>INBOX::</h2>
	 <%
    try{


	   st=con.createStatement();

                                                // getting mails by verifying roll.no

    qry="select msgfrom,msgto,subject,msg,to_char(date1,'dd-MON-YY'),msgid,inboxstatus,sentstatus  from mail where msgto='"+sid1+"'and inboxstatus="+1+" order by msgid desc";
	   rs=st.executeQuery(qry);
    %>
<center>

<form action="maildelete.jsp">
<input type="hidden" name="inb" value=1>
<input type="hidden" name="snb" value=0>

<table border=1 width=90% cellspacing=5 cellpadding=3><tr>
<td><h3>Select::</h3></td><td><h3>Date::</h3></td><td>	      <h3> From::	</h3></td><td> <h3>        Subject::</h3></td></tr>
    <%
	   while(rs.next())
	   {
		msid=rs.getString(6);
      %>
	<tr><td> <input type="checkbox" name="ck" value=<%=msid%> ></td><td><%=rs.getString(5)%></td><td><%out.println(rs.getString(1));%> &nbsp;</td>
	  <td> <a href="mailcontent1.jsp?msgid=<%=msid%>"> <%=rs.getString(3)%> </a>&nbsp;</td></tr>
	  <% }




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
	  </body>
	  </html>































