<%@ include file="common.jsp" %>
<body background="ob018.jpg">
<%@page import = "java.sql.*"%>
<%!
 Statement stmt=null;
 ResultSet rs=null;
 PreparedStatement pst,pst1,pst2,pst3,pst4,pst5,pst6;
 String sid1=null,obj=null,achieve=null,strength=null,place=null,date=null,exam1=null,uni1=null,year1=null,os=null,lang=null,langs=null,concepts=null,script=null,dbase=null,exam2=null,uni2=null,year2=null,exam3=null,uni3=null,year3=null,fname=null,nation=null,hobby=null,dob=null,gender=null,mstatus=null;
 %>
 <%
 HttpSession ses=request.getSession();
  sid1=(String)ses.getAttribute("sid");
 obj=request.getParameter("obj");
 achieve=request.getParameter("achieve");
 strength=request.getParameter("name1");
 //out.println(strength);
 exam1=request.getParameter("btech");
 uni1=request.getParameter("btechboard");
 year1=request.getParameter("btechyear");
 exam2=request.getParameter("inter");
 uni2=request.getParameter("interboard");
 year2=request.getParameter("interyear");
 exam3=request.getParameter("tenth");
 uni3=request.getParameter("tenboard");
 year3=request.getParameter("tenyear");
 os=request.getParameter("os");
 langs=request.getParameter("langs");
 script=request.getParameter("script");
 dbase=request.getParameter("dbase");
 concepts=request.getParameter("concepts");
 fname=request.getParameter("fname");
 lang=request.getParameter("lang");
 nation=request.getParameter("nation");
 gender=request.getParameter("gender");
 mstatus=request.getParameter("mstatus");
 hobby=request.getParameter("hobby");
 dob=request.getParameter("dob");
 place=request.getParameter("place");
 date=request.getParameter("date");
String aaa = request.getParameter("aaa");
String bbb = request.getParameter("bbb");
String ccc = request.getParameter("ccc");
 try
 {

  //out.println("hi");
  pst=con.prepareStatement("update cv set obj='"+obj+"',achievements='"+achieve+"',place='"+place+"',date1='"+date+"',strength='"+strength+"' where hno='"+sid1+"'");
    pst.executeUpdate();
	pst.close();
   //out.println("hi1");
   pst1=con.prepareStatement("update edu1 set exam='"+exam1+"',uni='"+uni1+"',year='"+year1+"' where  hno='"+sid1+"'");
     pst1.executeUpdate();
     pst1.close();

   pst6=con.prepareStatement("update edu4 set exam='"+aaa+"',uni='"+bbb+"',year='"+ccc+"' where  hno='"+sid1+"'");
     pst6.executeUpdate();
     pst6.close();
    pst2=con.prepareStatement("update edu2 set exam='"+exam2+"',uni='"+uni2+"',year='"+year2+"' where  hno='"+sid1+"'");
     pst2.executeUpdate();
	 pst2.close();
	pst3=con.prepareStatement("update edu3 set exam='"+exam3+"',uni='"+uni3+"',year='"+year3+"' where  hno='"+sid1+"'");
     pst3.executeUpdate();
	 pst3.close();
    pst4=con.prepareStatement("update technical set os='"+os+"',lang='"+langs+"',script='"+script+"',dbase='"+dbase+"',concept='"+concepts+"' where  hno='"+sid1+"'");
     pst4.executeUpdate();
	 pst4.close();
   pst5=con.prepareStatement("update personal set fathname='"+fname+"',dob='"+dob+"',gender='"+gender+"',marstatus='"+mstatus+"',lang='"+lang+"',nation='"+nation+"',hobbies='"+hobby+"' where hno='"+sid1+"'");
     pst5.executeUpdate();
	 pst5.close();
	%>
	<br><br><br><br><center><br><rb><br><br><br><br>
	<h2><font color="#2271A0">CV completed Successfully.</font></h2>
	<%
  }
  catch(Exception e)
 {
   out.println(e);
 }
%>
































