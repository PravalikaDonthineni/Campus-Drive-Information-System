<html>
<body background="ob018.jpg">
<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*"%>
<%!
Connection con=null;
Statement stmt=null;
ResultSet rs=null;
String sid=null,sid1=null;
%>
<%


   try
   {
	HttpSession ses=request.getSession();
	sid1=(String)ses.getAttribute("sid");
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con=DriverManager.getConnection("jdbc:odbc:PRO","scott","tiger");
        stmt=con.createStatement();
	rs=stmt.executeQuery("select id,rname,company,remail,contactno,mobileno,address,website,nosr                    from recruiter where hno='"+sid1+"'");
	out.println(sid1);
	while(rs.next())
           {%>
         <form name="f" method="post" action="sdetails.jsp"><center>
<pre>   <h1><u><font color="blue">Update Details:</font></u></h1>
 Employee ID:    <%=rs.getString(1)%><br>
 	Empolyee Name:           <input type="text" name="rname2" value="<%=rs.getString(2)%>" size="15"><br>
	Company Name:         <input type="text" name="rname4" value="<%=rs.getString(3)%>" size="15"><br>
    Email ID:         <input type="text" name="rname5" value="<%=rs.getString(4)%>" size="20"><br>
    Contact Number:         <input type="text" name="rname6" value="<%=rs.getInt(5)%>" size="15"><br>
    Mobile Number:         <input type="text" name="rname7" value="<%=rs.getInt(6)%>" size="15"><br>
    Address:              <textarea name="addr" rows="5" columns="20" cols="16" maxsize="30" value="<%=rs.getString(7)%>"></textarea><br>
    Website:               <input type="text" size="30" name="web" value="<%=rs.getString(8)%>"><br>
	Number Of Students:    <input type="text" size="10" name="stud" value="<%=rs.getString(9)%>"><br>
<p>
<B>
&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="UPDATE">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="RESET"></p>
</b>

 <% }
    }
  catch(Exception e)
   {
    out.println(e);
   }
%>
</body>
</html>






























