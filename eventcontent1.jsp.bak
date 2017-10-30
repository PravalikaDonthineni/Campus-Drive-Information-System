<%@ include file="common.jsp" %>
<html><body background="ob018.jpg">
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>
<%!

   ResultSet rs=null;
   String msgid=null;
   %>
  <%
       msgid=request.getParameter("msgid");
	  // out.println(msgid);
	   
    try{
	   

	   st=con.createStatement();

	   rs=st.executeQuery("select * from event where  msgid='"+msgid+"'");
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
	  <tr><td align="left" > date</td><td ><%=rs.getString(3)%>&nbsp;</td></tr><tr></tr>
	   <tr><td align="left"> sub::</td><td ><%=rs.getString(1)%>&nbsp;</td></tr><tr></tr>
	<tr><td align="left" >Message::</td><td ><%=rs.getString(2)%>&nbsp;</td></tr><tr></tr>


    <%
	  }%>
	
<%	}
	catch(Exception e)
	{
	  out.println(e);
   } %>


	</table>
	<br><br><center>
	</body>
	</html>































