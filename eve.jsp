<html><body background="ob018.jpg">
<%@ page import="java.sql.*" %>
<%@ include file="common.jsp" %>
<%!

   ResultSet rs=null;
   String msid=null;
   //String[] dat=null;
   String sid1=null,qry=null;
   int i=0;
   %>

	 <font color="2271A0" size=5><b><u>Events</u>:</b></font>
	 <%
    try{

       qry="select * from event order by date1 desc";
	   rs=st.executeQuery(qry);
    %>

   <center><br><br>
<form>
 <table border=1  width=500 cellpadding=2 align=center height="1" ><tr>
  <td align=center height="1"><h3>&nbsp;Events posted on</h3></td>
  <td align=center height="1"> <h3> Event </h3></td></tr>
    <%
	   while(rs.next())
	   {
	    msid=rs.getString(4);
		%> <tr> <td align=center height="19"><%out.println(rs.getString(3));%> &nbsp;</td>
     <td align=center height="19"><a href="eventcontent1.jsp?msgid=<%=msid%>"> <%=rs.getString(1)%> </a>&nbsp;</td></tr>



	 <% }
	 }
	  catch(Exception e)
	  {
	    out.println(e);
      }

	  %>

  </table>
</form>
	  </body>
	  </html>































