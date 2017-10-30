<%@ include file="common.jsp" %>
<%@page import = "java.sql.*"%>
<body background="ob018.jpg">
<%
String sid1=null;
HttpSession ses=request.getSession();
	sid1=(String)ses.getAttribute("sid");
  if(sid1.equals("admin"))
	 {%>
<font color="2271A0">
<h2><u>Approval</u> : </h2>
 <form name="f1" method="get" action="appd.jsp" >
<h5><center><table><thead><tr rowspan="3"><td></td><td><center>HallticketNO</td><td><center>Name</td><td><center>BTech %</td><td><center>Inter %  </td><td><center>Tenth%</td><td><center>Approval%</td></tr></thead><tbody></h5><br></center></pre>
<%@page import="java.sql.*"%>
<%!
 Statement stmt=null;
 ResultSet rs=null;
 String hn;
 %>
 <%
 try
 {


  rs=st1.executeQuery("select hno,fname,baggregate,inter,tenth,approved,sno from student where approved='0'");
    while(rs.next())
	 {
	  hn=rs.getString(1);
	%>
	 <pre><h6><tr><td><center><input type="checkbox" name="chk" value=<%=hn%>></td><td><center>	  <%out.println(hn);%></td><td><center><%out.println(rs.getString(2));%></td><td><center><%out.println(rs.getString(3));%> </td><td><center><%out.println(rs.getString(4));%></td><td><center><%out.println(rs.getString(5));%></td><td><center><%out.println(rs.getInt(6));%></td><tr><%
	 }%>
      <td colspan="6">  <center> <br>    <input type="submit" value=" Approve "></td></tr> </pre></h6></center></tbody></table><%
 }
 catch(Exception e)
  {
   out.println(e);
  }
 }
 else
 {
  out.println("<center><br><h3><font color=#2271A0>U dont have privilage to approve</h3>");
 }
%>
</form>
































