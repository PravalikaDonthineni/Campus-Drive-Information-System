<%@ include file="common.jsp" %>
<body background="ob018.jpg">
<%@ page import="java.sql.*" %>
<%!
   Statement stmt=null;
   ResultSet rs=null;

   String msgto=null,sub=null,msg=null,sid1=null,dat=null;
   int i=0;
   %>

  <%

	HttpSession ses=request.getSession();
	sid1=(String)ses.getAttribute("sid");



   msgto=request.getParameter("to");
   sub=request.getParameter("sub");
   msg=request.getParameter("msg");


try {

	     st=con.createStatement();
		 stmt=con.createStatement();

		 rs=st.executeQuery("select * from mail");
       int c=0;
		while(rs.next())
	    {
		  c++;                                                    //To increment msg id
		}
        c=c+1;


	 rs=st.executeQuery("select to_char(sysdate) from dual");
	rs.next();                                                   //for date
	dat=rs.getString(1);

										   //send  msg to entire college students
	  if(msgto.equals("admin"))

	    {

        st.executeUpdate("insert into mail values('"+sid1+"','"+msgto+"','"+sub+"','"+msg+"','"+dat+"',"+c+","+1+","+1+")");
		   c=c+1;
	   }




	  out.println("<font color=#2271A0 size=5>u'r mail has been Sucessfully Sent.....");
	  %>





		<%

   }
   catch(Exception e)
   {
	     out.println(e.getMessage());
   }

    %>































