
<%@ include file="common.jsp" %>
<html><body background="ob018.jpg">
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>
<%!

   ResultSet rs=null;
   int msid=0;
   %>
  <%
       msid=Integer.parseInt(request.getParameter("msgid"));

    try{

	   st=con.createStatement();

	   rs=st.executeQuery("select msgfrom,msgto,subject,msg,to_char(date1,'dd-MON-YY'),msgid,inboxstatus,sentstatus from mail where msgid="+msid);
   %>
   <table border=1 color="green">
   <colgroup>
     <col width=20%></col>
	 <col width=20%></col>
	 <col width=60%></col>
	</colgroup>
   <%
   while(rs.next())
   {
     %>
	  <tr><td align="left" > From::</td><td ><%=rs.getString(1)%>&nbsp;</td></tr><tr></tr>
	   <tr><td align="left"> Sub::</td><td ><%=rs.getString(3)%>&nbsp;</td></tr><tr></tr>
     <tr><td align="left"> Date::</td><td ><%=rs.getString(5)%>&nbsp;</td></tr><tr></tr>
	<tr><td align="left" >Message::</td><td ><%=rs.getString(4)%>&nbsp;</td></tr><tr></tr>


    <%
	  }
	}
	catch(Exception e)
	{
	  out.println(e);
   } %>


	</table>

	</body>
	</html>































