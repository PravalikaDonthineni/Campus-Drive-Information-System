<%@ include file="common.jsp" %>
<%@page import="java.sql.*"%>
<%!
 Statement stmt=null;
 ResultSet rs=null;
 String s,s1;
  %>
  <br>
  <br>
  <br><body background="ob018.jpg">
 <center>
  <table>
 <thead><td align=center><b><i><font size=4 color= "#2271A0">CompanyName</i></b></td><td align=center><b><i><font size=4 color= "#2271A0">Website</b></i></td></thead><tbody>
 <%
 try
 {

  stmt=con.createStatement();
  rs=stmt.executeQuery("select id,website from recruiter");
  while(rs.next())
  {
   s=rs.getString(2);
   s1="http://"+s;
  %>
  <tr><td align=center><font size=4 color= "#000000"><%=rs.getString(1)%></td><td align=center><font size=4 color= "#000000"><a href="<%=s1%>" target="a_blank"><%=s%></a></td></tr>
  <%
  }
  %>
  </tbody>
  </table>
  </center>
  </body>
  <%
  }
 catch(Exception e)
 {
  out.println(e);
 }
 %>































