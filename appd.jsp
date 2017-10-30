<%@ include file="common.jsp" %>
<body background="ob018.jpg">
 <%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.util.*" %>
<%!
   ResultSet rs=null;
   int msid=0,pname=0,i=0,j=1;
   String paramName=null,qry=null;
   String[] paramValues=null;
   %>
  <%
    Enumeration paramNames = request.getParameterNames();
        while(paramNames.hasMoreElements())
		  {
              paramName=(String)paramNames.nextElement();
              paramValues=request.getParameterValues(paramName);
           }
    try
	 {

	   st=con.createStatement();
       for(i=0;i<paramValues.length;i++)
	     {
		   qry="update student set approved='1' where hno='"+paramValues[i]+"'";
	       st.executeUpdate(qry);
		 }
	   out.println("<h2><br><br><br><font color=#2271A0>Sucessfully Approved.......");
	  }
	 catch(Exception e)
	  {
	   out.println(e);
	  }
%>































