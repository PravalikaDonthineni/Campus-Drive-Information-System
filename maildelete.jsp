<html><body background="ob018.jpg">
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.util.*" %>
<%!
   Connection con=null;
   Statement st=null;
   ResultSet rs=null;
   int msid=0,pname=0,i=0,count=0;
   String paramName=null,qry=null;
   String[] paramValues=null;
   %>
  <%
      int inb=Integer.parseInt(request.getParameter("inb"));
      int snb=Integer.parseInt(request.getParameter("snb"));

    try{


	   DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","train","train");
	   st=con.createStatement();

        Enumeration paramNames = request.getParameterNames();
        while(paramNames.hasMoreElements())
		  {
              paramName=(String)paramNames.nextElement();
                  //pname=Integer.parseInt(paramName);

				  if(paramName.equals("snb")||paramName.equals("inb"))
					  continue;
                  paramValues=request.getParameterValues(paramName);



	       }


       if(inb==1)
        {
	      for(i=0;i<paramValues.length;i++)
		    {    qry="update mail set inboxstatus="+0+" where msgid="+paramValues[i];
		     st.executeUpdate(qry);

			   count++;
			 }

			  out.println(count+"Mails sucessfully deleted.......");
			  count=0;
             %>
			    <jsp:include page="inbox1.jsp"/>
				   <%
	     }
           if(snb==1)
			{
				for(i=0;i<paramValues.length;i++)
		         {
					qry="update mail set sentstatus="+0+" where msgid="+paramValues[i];
		              st.executeUpdate(qry);

			          count++;

			        }
				  out.println(count+"Mails sucessfully deleted.....");

             		  count=0;
				  %>
			    <jsp:include page="sent.jsp"/>
				   <%
	      }
		 }catch(Exception e)
		  {
		   out.println(e);
		   }



   %>































