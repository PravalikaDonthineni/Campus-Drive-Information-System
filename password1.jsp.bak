<html>
<body background="ob018.jpg">
<%@page import="java.sql.*"%>
<%!
 Connection con=null;
 Statement stmt=null,st=null;
 ResultSet rs=null,rs1=null;
 String lname,hnum,snam,br,byr,bagg,boi,ssc,dat,mon,yr,contact,email,que,ans,ans1=null,pswd=null;
 String sid=null,sid1=null;
 int i;
%>
<%
 sid=request.getParameter("sid");
 ans=request.getParameter("ans");
 //out.println(ans);
  try
 {
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 con=DriverManager.getConnection("jdbc:odbc:train","train","train");
 stmt=con.createStatement();
 st=con.createStatement();
 rs=stmt.executeQuery("select hno,answer from student where hno='"+sid+"'");
 rs.next();//out.println(rs.getString(1));
 if(ans.equals(rs.getString(2)))
  {
	 out.println("hi");
   rs1=st.executeQuery("select id,pswd from login where id='"+sid+"'");
   rs1.next();
   pswd=rs1.getString(2);
   out.println("your password is...."+pswd);
  }
  else
	{
    out.println("wrong answer");%>
    <a href="password.jsp?login=<%=sid%>"><font color="2271A0">back</font></a><%}
 }
 catch(Exception e)
 {
  out.println(e);
 }%>































