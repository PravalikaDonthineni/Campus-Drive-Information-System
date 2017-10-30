

<%@ include file="common.jsp" %>

<html><body bgcolor="lavender">
<%@ page import="java.sql.*,java.lang.*" %>
<%!

   Statement stmt=null;
   ResultSet rs=null,rs1=null;
   String msid=null,uid=null,qry=null,str1=null;
   int c=0,i;
   %>
  <%

    try{


	   st=con.createStatement();
	    st1=con.createStatement();
	    stmt=con.createStatement();
	   rs=st.executeQuery("select count(*) from event");


		rs.next();
	    int z=rs.getInt(1);
		int m=z+1;
		for(i=1;i<=z;i++)
		{
			 msid=request.getParameter("ck"+i);
			  int n=m-i;
			if(msid!=null)
			{    out.println(msid+" "+i+"<BR>");
				  int j=st1.executeUpdate("delete event where msgid='"+n+"'");
			}
		}

		int k=1;
		 rs=st.executeQuery("select msgid from event");
		 while(rs.next())
		{   String x=rs.getString(1);
		 int xx=Integer.parseInt(x);
		     out.println(xx+" "+k+"<BR>");
			 if(xx!=k)
			{	 out.println(xx+" "+k);
			  String qq="update event set msgid='"+k+"' where msgid='"+xx+"'";
			  out.println(qq);
			 stmt.executeUpdate(qq);
			 out.println("UPDATED<BR>");
			}
			 k=k+1;

		   }%>

		<jsp:forward page="allevents.jsp"/>
		<%

       // out.println("u'r event has been Sucessfully deleted......");
	}
	catch(Exception e)
   {
	     out.println(e.getMessage());
   }

  %>
  </body>
  </html>
































































