<html>
<body background="ob018.jpg">
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ include file="common.jsp" %>
<%!
 ResultSet rs=null;
 PreparedStatement pst;
 String hno=null,cmpid=null,dat=null;
 int i=1,k;
 String j;
 %>
 <%
  j=request.getParameter("x");
  dat=request.getParameter("y");
  try
    {
	 k=Integer.parseInt(j);
	 while(i<k)
    	{
	     hno=request.getParameter("abc"+i);
		 //out.println(hno);
		 cmpid=request.getParameter("abcd"+i);
		 //out.println(cmpid);
		 i++;
		 pst=con.prepareStatement("insert into results values('"+hno+"','"+cmpid+"','"+dat+"')");
	     pst.executeUpdate();
     	 pst.close();
		 pst=con.prepareStatement("update student set s=1 where hno='"+hno+"'");
	     pst.executeUpdate();
     	 pst.close();
		}
	out.println("<br><br><b><font size=8 color=#2271A0><center>Added Successfully</b></font>");
	}

catch(Exception e)
{
out.println(e);
}
%>































