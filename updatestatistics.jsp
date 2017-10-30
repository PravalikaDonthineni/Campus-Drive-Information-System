<%@ include file="common.jsp" %>
<html>
<%@page import="java.sql.*"%>
<%!

 Statement stmt=null;
 ResultSet rs=null;
 String d,e,sid1=null;
 int i=1,f;
 %>
<head>
<title>
Update Statistics
</title>
</head>
<body background="ob018.jpg"><%
 HttpSession ses=request.getSession();
	sid1=(String)ses.getAttribute("sid");
  if(!(sid1.equals("NULL")))
	 {%>
<form name=f2 method="post" action="ustats1.jsp">
<u><font size="5" color="2271A0">Update Statistics:</u></h1></font>
<table border = 0 >
<tr>
<Td>
Date : <td><select name="d"><option selected>1</option>
			  <option value=1>1</option>
			  <option value=2>2</option>
<option value=3>3</option>
<option value=4>4</option>
<option value=5>5</option>
<option value=6>6</option>
<option value=7>7</option>
<option value=8>8</option>
<option value=9>9</option>
<option value=10>10</option>
<option value=11>11</option>
<option value=12>12</option>
<option value=13>13</option>
<option value=14>14</option>
<option value=15>15</option>					  <option value=16>16</option>					  <option value=17>17</option>					  <option value=18>18</option>				          <option value=19>19</option>					  <option value=20>20</option>					  <option value=21>21</option>						  <option value=22>22</option>					  <option value=23>23</option>				          <option value=24>24</option>					  <option value=25>25</option>
<option value=26>26</option>
<option value=27>27</option>
<option value=28>28</option>
<option value=29>29</option>
<option value=30>30</option>
<option value=31>31</option>
</select>
<Td>
 <select name="m"><option selected value="JAN">1</option>
									          <option value="FEB">2</option>
											  <option value="MAR">3</option>
										          <option value="APR">4</option>
											  <option value="MAY">5</option>
											  <option value="JUN">6</option>
											  <option value="JUL">7</option>
											  <option value="AUG">8</option>
										          <option value="SEP">9</option>
										  <option value="OCT">10</option>
											  <option value="NOV">11</option>
											  <option value="DEC">12</option> </select>
<td><select name="year">
<option>2007</option>
<option>2008</option>
<option>2009</option>
<option>2010</option>
<option>2011</option>
<option>2012</option>
<option>2013</option>
<option>2014</option>
<option>2015</option>
</select>
</table>
<%
 try
 {


  stmt=con.createStatement();
  rs=stmt.executeQuery("select id,nosr from recruiter");
  while(rs.next())
   {
	d=rs.getString(1);
	e=rs.getString(2);
	f=Integer.parseInt(e);%>
<B><font size="3">
<%=d%>   old <%=e%> new <input type="textbox" name=<%=d%> value=0   size=10>

<br><br>
   <% }
	 }
   catch(Exception e)
  {
   out.println(e);
  }

 %>

<input type="submit" value="Update" name="update">
<%}
else
{
  out.println("<center><br><h3><font color=#2271A0>U dont have privilage to update</h3>");
}%>
</font>
</B>
</center>
</pre>
</body>
</html>
































