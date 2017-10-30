<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*"%>
<%!

   Statement stmt=null,stmt1=null;
   String pw=null,newpw=null,conpw=null,sid1=null,spw1=null,u=null,p=null;
   int flag=0,i=0;
%>
<%
   pw=request.getParameter("cpswd");
   newpw=request.getParameter("ncpswd1");
   conpw=request.getParameter("ncpswd2");
%>
<%
  try
  {
    HttpSession ses=request.getSession();
	sid1=(String)ses.getAttribute("sid");
	p=(String)ses.getAttribute("spw");

    stmt=con.createStatement();

	   if(p.equals(pw) && newpw.equals(conpw))
	    {
	     i=stmt.executeUpdate("update login set pswd='"+newpw+"' where id='"+sid1+"'");
		 if(i>0)
		 {
   %>

          <jsp:include page="success.html"/>


		<% }

		}
		 else
	    {
%>
	      <script language="javascript">
		    window.alert("password and confirm password are not same enter correct details");
          </script>

          <jsp:include page="scpswd.jsp"/>

<%
	    }





	  }



  catch(Exception e)
  {
    out.println(e);

  }

  %>
