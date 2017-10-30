<html>
<body background="ob018.jpg">
<%@page import="java.sql.*"%>
<%@ include file="common.jsp" %>
<%!
 ResultSet rs=null;
 String lname,hnum,snam,br,byr,bagg,boi,ssc,dat,mon,yr,contact,email,que,ans;
 String sid=null,sid2=null;
 int i,c=1;
%>
<form action="password1.jsp">
<table>
<%
 sid=request.getParameter("login");
%><input type="hidden" value="<%=sid%>" name="sid"><%
 try
 {
 st=con.createStatement();
 rs=st.executeQuery("select hno,question from student where hno='"+sid+"'");
  while(rs.next())
     {
     sid2=rs.getString(1);

	 if(sid2.equals(sid))
	 {

	   c=0; %>
      <tr><td><font size=3><b>Security Question:</b></font><br></td><td align=right><%=rs.getString(2)%></td></tr>
 <tr><td><font size=3><b>Answer:</b></font><br></td><td align=right><input type="text" name="ans"></td></tr>
<tr rowspan=2><td colspan=2 align=center><br><input type="submit" value="  next  "></td></tr>
   <%}
    else
		 {
		  out.println("<font color=2271A0 size=5>User does not exist</font>");
		  break;
		 }
   }


 }
 catch(Exception e)
 {
  out.println(e);
 }%>
 </table>
 </form>































