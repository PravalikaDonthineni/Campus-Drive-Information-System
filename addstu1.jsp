<%@ include file="common.jsp" %>
<body background="ob018.jpg">
<%@page import = "java.sql.*"%>
<%!
 String radio=null,from,to,temp,hn,hn1,hn2,hno;
  int j,hno1,hno2;
 ResultSet rs=null,rs1=null,rs2=null,rs3=null,rs4=null,rs5=null,rs6=null;
 PreparedStatement pst=null,pst2=null,pst3=null,pst4=null,pst5=null,pst1=null,pst6=null,pst7=null;
 String cname1,i="0",pwd1,type="s";
 String sid1=null,obj=null,achieve=null,strength=null,place=null,date=null,exam1=null,uni1=null,year1=null,os=null,lang=null,langs=null,concepts=null,script=null,dbase=null,exam2=null,uni2=null,year2=null,exam3=null,uni3=null,year3=null,fname=null,nation=null,hobby=null,dob=null,gender=null,mstatus=null,f1name=null,lname=null,address=null,contactno=null,email=null,inter=null,tenth=null,baggrigate=null;
 %>
 <%
 cname1=request.getParameter("x");
 //out.println(cname1);
 pwd1=request.getParameter("y");
 //out.println(pwd1);
 radio=request.getParameter("z");

 try
 {

  if(radio.equals("single"))
   {
     pst=con.prepareStatement("insert into cv values(?,?,?,?,?,?)");
  	pst.setString(1,obj);
	pst.setString(2,achieve);
    pst.setString(3,place);
	pst.setString(4,date);
	pst.setString(5,strength);
	pst.setString(6,cname1);
	pst.executeUpdate();
	pst.close();
   pst1=con.prepareStatement("insert into edu1 values(?,?,?,?)");
     pst1.setString(1,exam1);
     pst1.setString(2,uni1);
     pst1.setString(3,year1);
	 pst1.setString(4,cname1);
	 pst1.executeUpdate();
     pst1.close();
    pst2=con.prepareStatement("insert into edu2 values(?,?,?,?)");
     pst2.setString(1,exam2);
     pst2.setString(2,uni2);
     pst2.setString(3,year2);
     pst2.setString(4,cname1);
	 pst2.executeUpdate();
	 pst2.close();
	pst3=con.prepareStatement("insert into edu3 values(?,?,?,?)");
     pst3.setString(1,exam3);
     pst3.setString(2,uni3);
     pst3.setString(3,year3);
     pst3.setString(4,cname1);
	 pst3.executeUpdate();
	 pst3.close();


	pst7=con.prepareStatement("insert into edu4 values(?,?,?,?)");
     pst7.setString(1,exam3);
     pst7.setString(2,uni3);
     pst7.setString(3,year3);
     pst7.setString(4,cname1);
	 pst7.executeUpdate();
	 pst7.close();



    pst4=con.prepareStatement("insert into technical values(?,?,?,?,?,?)");
     pst4.setString(1,os);
     pst4.setString(2,langs);
     pst4.setString(3,script);
	 pst4.setString(4,dbase);
     pst4.setString(5,concepts);
	 pst4.setString(6,cname1);
	 pst4.executeUpdate();
	 pst4.close();
   pst5=con.prepareStatement("insert into personal values(?,?,?,?,?,?,?,?)");
     pst5.setString(1,fname);
     pst5.setString(2,dob);
     pst5.setString(3,gender);
	 pst5.setString(4,mstatus);
     pst5.setString(5,lang);
	 pst5.setString(6,nation);
	 pst5.setString(7,hobby);
     pst5.setString(8,cname1);
	 pst5.executeUpdate();
	 pst5.close();
  pst6=con.prepareStatement("insert into login values(?,?,?)");
    pst6.setString(1,cname1);
	pst6.setString(2,pwd1);
	pst6.setString(3,type);
	pst6.executeUpdate();
    pst6.close();

   }
  else if(radio.equals("multiple"))
   {
    from=request.getParameter("x1");
    if(from.charAt(8)=='0')
    {
     hn=from.substring(0,9);
     temp=from.substring(9,10);
     hno1= Integer.parseInt(temp);
    }
    else
    {
     hn1=from.substring(0,8);
     temp=from.substring(8,10);
     hno1= Integer.parseInt(temp);
    }
    to=request.getParameter("x2");
    temp=to.substring(8,10);
    hno2= Integer.parseInt(temp);
   while(hno1<=hno2)
    {
     if(hno1<10)
     hno=hn+hno1;
     else if(hno1>=10)
	 {
      hn1=from.substring(0,8);
      hno=hn1+hno1;
     }
     pst=con.prepareStatement("insert into cv values(?,?,?,?,?,?)");
  	pst.setString(1,obj);
	pst.setString(2,achieve);
        pst.setString(3,place);
	pst.setString(4,date);
	pst.setString(5,strength);
	pst.setString(6,hno);
	pst.executeUpdate();
	pst.close();
   pst1=con.prepareStatement("insert into edu1 values(?,?,?,?)");
        pst1.setString(1,exam1);
        pst1.setString(2,uni1);
        pst1.setString(3,year1);
	    pst1.setString(4,hno);
	    pst1.executeUpdate();
        pst1.close();
    pst2=con.prepareStatement("insert into edu2 values(?,?,?,?)");
        pst2.setString(1,exam2);
        pst2.setString(2,uni2);
        pst2.setString(3,year2);
        pst2.setString(4,hno);
	    pst2.executeUpdate();
	    pst2.close();
    pst3=con.prepareStatement("insert into edu3 values(?,?,?,?)");
        pst3.setString(1,exam3);
        pst3.setString(2,uni3);
        pst3.setString(3,year3);
        pst3.setString(4,hno);
	    pst3.executeUpdate();
	    pst3.close();
    pst4=con.prepareStatement("insert into technical values(?,?,?,?,?,?)");
        pst4.setString(1,os);
        pst4.setString(2,langs);
        pst4.setString(3,script);
        pst4.setString(4,dbase);
        pst4.setString(5,concepts);
	    pst4.setString(6,hno);
    	pst4.executeUpdate();
    	pst4.close();
     pst5=con.prepareStatement("insert into personal values(?,?,?,?,?,?,?,?)");
       pst5.setString(1,fname);
       pst5.setString(2,dob);
       pst5.setString(3,gender);
       pst5.setString(4,mstatus);
       pst5.setString(5,lang);
       pst5.setString(6,nation);
       pst5.setString(7,hobby);
       pst5.setString(8,hno);
       pst5.executeUpdate();
       pst5.close();
      pst6=con.prepareStatement("insert into login values(?,?,?)");
       pst6.setString(1,hno);
       pst6.setString(2,pwd1);
       pst6.setString(3,type);
       pst6.executeUpdate();
       pst6.close();
	  hno1++;
	}
   }
  out.println("<br><br><b><font size=8 color=#2271A0><center>"+"Student added successfully </b></font>");
 }
  catch(Exception e)
 {
   out.println("<center><h2><br><br><br><font color=#2271A0>Student already exists");
 }
%>
































