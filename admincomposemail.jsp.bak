<%@ include file="common.jsp" %>
<%!
 int i,j,dat1,dat,yr;
%>
<html>
<head>
<body background="ob018.jpg">
<form   name="compose" action="composemail1.jsp" method="get"><pre><table height="178">
<table border=0>
<pre><tr><td>To</td></tr>
<tr><td><pre>&nbsp<input type="checkbox" name="r" value="rect">Recruiters</td></tr>
<tr><td><pre>&nbsp<input type="radio" value="students1" name="s">All Students</td>
<tr><td><pre>&nbsp<input type="radio" value="students" name="s">Students&nbsp</td>
<td>Branch: <select name="branch">
<option selected value="%">All</option>
<%
String str="select BRANCH_NAME from branch";

ResultSet rs3=st.executeQuery(str);
while(rs3.next())
{
	String branchval=rs3.getString("BRANCH_NAME");
%>
<option value=<%=branchval%>>
<font color="#6633FF"><b><%=branchval%></b></font></option>
<%}%>
</select>
</td><td>Aggregate: <select name="aggr">
<option selected value="0">All</option>
<option value="75">>=75%</option>
<option value="70">>=70%</option>
<option value="68">>=68%</option>
<option value="65">>=65%</option>
<option value="63">>=63%</option>
<option value="60">>=60%</option>
</select> </td>
<td>
<%
try
{
ResultSet rs=st1.executeQuery("Select to_char(sysdate,'yyyy') from dual");
 rs.next();                                                   
	dat=Integer.parseInt(rs.getString(1));
  rs.close();
  rs=st2.executeQuery("select estyear from administrator");
  rs.next();
   dat1=Integer.parseInt(rs.getString(1));
   j=dat-7;
   if(j<(dat1+4))
	j=dat1+4;
 }
catch(Exception e)
{
 out.println(e);
}
%> Passed out: <select name="passedout">
<%
while(j<=(dat+1))
{%><option value="<%=j%>"><%=j++%></option>
<%
}
%></select></td> </tr>
<tr><td colspan=3>&nbsp;&nbsp;<input type="checkbox" name="na" value="approve">Students Not Approved</td></tr>
<tr><td>
&nbsp TO : </td><td height="37" colspan=2><input type="text" name="to" size=50></td></tr>
<tr><td> Subject : </td><td height="37" colspan=2><input type="text" name="sub" size=50></td></tr>
<tr><td>Message :</td><td height="84" colspan=2> 
  <textarea rows=5 width=90 cols=38 name="msg">
</textarea></td></tr>
</table></pre>
<br>
<br>

&nbsp <input type="submit" value=" send "> &nbsp &nbsp <input type=reset value=discard> </form>
</pre>
</pre>
</pre>
</pre>
</head>
</html>































