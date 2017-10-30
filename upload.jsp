<%@ include file="common.jsp" %>
<body background="ob018.jpg">
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%!
	ResultSet rs=null;
	String mname=null;
	String path=null,fn=null;
	PreparedStatement pst=null,pst1=null;
	StringTokenizer stk=null;
%>

<%

        try
	   {
	      mname=request.getParameter("s1");
	      path=request.getParameter("brws");
              stk=new StringTokenizer(path,"\\");
	      while(stk.hasMoreTokens())
	      {
                 fn=stk.nextToken();
	      }
            pst=con.prepareStatement("insert into material values(?,?)");
      	    pst.setString(1,mname);
            pst.setString(2,fn);
     	    pst.executeUpdate();
       	    pst.close();

           out.println("<b><font size=8 color=#2271A0><center>"+"successfully                                            inserted"+"</center></b></font>");
          %><br><br><br><br><br><br><a href="material.jsp"><font color="#2271A0"><center>back</a><%
	 }


     catch(Exception e)
	 {
	    out.print(e);
         }
	 %>


































