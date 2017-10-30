<%@ include file="common.jsp" %>
<body background="ob018.jpg">
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%!
   StringTokenizer stk=null;

   Statement stmt=null,stmt1=null,stmt2=null;
   ResultSet rs=null,rs1=null,rs2=null;
   PreparedStatement pst=null;

   String msgto=null,msgto1=null,msgto2=null,sub=null,msg=null,uid=null,to=null,qry=null,dat=null,hno=null,cc=null;
   int i=0,agg=0,yr1=0,yr3;
   String temp=null,yr2=null,hno1=null,br=null,yr=null;
   %>

  <%

   msgto=request.getParameter("s");
   //out.println(msgto);
   msgto1=request.getParameter("r");
   msgto2=request.getParameter("na");

   agg=Integer.parseInt(request.getParameter("aggr"));
 br=request.getParameter("branch");
 temp=request.getParameter("passedout");
 //temp=String.parseString(yr1);
 yr=temp.substring(2,4);
 yr1=Integer.parseInt(yr);
 yr1=yr1-4;

   if(msgto==null)
      msgto="abc";
 //out.println(msgto1);
 if(msgto1==null)
      msgto1="abc";
   if(to==null)
      to="abc";
  if(msgto2==null)
      msgto2="abc";

   sub=request.getParameter("sub");
   msg=request.getParameter("msg");
   to=request.getParameter("to");


	//out.println(to);
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
		//out.println(c);
		 rs=st.executeQuery("select to_char(sysdate) from dual");
	    rs.next();
		//out.println("hi");                                                  //for date
	    dat=rs.getString(1);
					//out.println("hi");					   //send  msg to entire  students
	    if(msgto1.equals("rect"))
	      {
			  //out.println("hi inside rect ");
	         rs=stmt.executeQuery("select id from recruiter");
	        while(rs.next())
	      	{
		       st.executeUpdate("insert into mail values('admin','"+rs.getString(1)+"','"+sub+"','"+msg+"','"+dat+"',"+c+","+1+","+1+")");
		      c=c+1;
             }
	        if(msgto.equals("students"))
         {       //out.println("coll"+c);
          stmt=con.createStatement();
	     rs=stmt.executeQuery("select ccode from administrator");
         rs.next();
	      cc=rs.getString(1);
	      stmt1=con.createStatement();
	      rs1=stmt1.executeQuery("select hno from student");
     while(rs1.next())
      {
       hno=rs1.getString(1);
	   hno1=hno;
	   StringTokenizer st1=new StringTokenizer(hno,cc);
	   yr2=st1.nextToken();
	   yr3=Integer.parseInt(yr2);
       if(yr3==yr1)
		{
         stmt2=con.createStatement();
		 qry="select hno from student where hno like '"+hno1+"' and baggregate >="+agg+"and branch like '"+br+"' and approved = '1' and s=0";
	     rs2=stmt2.executeQuery(qry);
			// out.println("hi");
		 while(rs2.next())
		   {
	       st.executeUpdate("insert into mail values('admin','"+rs2.getString(1)+"','"+sub+"','"+msg+"','"+dat+"',"+c+","+1+","+1+")");
		   c=c+1;
           }
	      }
	    }
	 }
	       else if(msgto.equals("students1"))
         {       //out.println("coll"+c);
		 // out.println("hi");
          rs=stmt.executeQuery("select hno from student where approved='1' and s=0");
         while(rs.next())
		   {

           st.executeUpdate("insert into mail values('admin','"+rs.getString(1)+"','"+sub+"','"+msg+"','"+dat+"',"+c+","+1+","+1+")");
		   c=c+1;
           }
	      }
		 }
			//out.println("hi123");
	else if(msgto.equals("students"))
         {       //out.println("coll"+c);
          stmt=con.createStatement();
	     rs=stmt.executeQuery("select ccode from administrator");
         rs.next();
	      cc=rs.getString(1);
	      stmt1=con.createStatement();
	      rs1=stmt1.executeQuery("select hno from student");
     while(rs1.next())
      {
       hno=rs1.getString(1);
	   hno1=hno;
	   StringTokenizer st1=new StringTokenizer(hno,cc);
	   yr2=st1.nextToken();
	   yr3=Integer.parseInt(yr2);
       if(yr3==yr1)
		{
         stmt2=con.createStatement();
		 qry="select hno from student where hno like '"+hno1+"' and baggregate >="+agg+"and branch like '"+br+"' and approved = '1' and s=0";
	     rs2=stmt2.executeQuery(qry);
			// out.println("hi");
		 while(rs2.next())
		   {
	       st.executeUpdate("insert into mail values('admin','"+rs2.getString(1)+"','"+sub+"','"+msg+"','"+dat+"',"+c+","+1+","+1+")");
		   c=c+1;
           }
	      }
	    }
	 }
	else if(msgto.equals("students1"))
         {       //out.println("coll"+c);
		  //out.println("hi");
          rs=stmt.executeQuery("select hno from student where approved='1' and s=0");
         while(rs.next())
		   {

           st.executeUpdate("insert into mail values('admin','"+rs.getString(1)+"','"+sub+"','"+msg+"','"+dat+"',"+c+","+1+","+1+")");
		   c=c+1;
           }
	      }
     else if(msgto2.equals("approve"))
         {       //out.println("coll"+c);
		  //out.println("hi");
          rs=stmt.executeQuery("select hno from student where approved='0' and s=0");
         while(rs.next())
		   {

           st.executeUpdate("insert into mail values('admin','"+rs.getString(1)+"','"+sub+"','"+msg+"','"+dat+"',"+c+","+1+","+1+")");
		   c=c+1;
           }
	      }
		else
			{
             qry="insert into mail values('admin','"+to+"','"+sub+"','"+msg+"','"+dat+"',"+c+","+1+","+1+")";
             st.executeUpdate(qry);
		     c=c+1;
	        }

        out.println("<font color=#2271A0 size=6><br><br><center>u'r mail has been Sucessfully Sent.....<img  border=0 src='email1.gif' width=64  height=34>");
    }
   catch(Exception e)
   {
	     out.println(e);
   }

    %>































