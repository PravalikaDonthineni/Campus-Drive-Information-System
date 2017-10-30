<%@ include file="common.jsp" %>
<%@page import = "java.sql.*"%>
<%@page import = "java.io.*"%>
<%!
 Statement stmt=null;
 ResultSet rs=null;
 PreparedStatement pst,pst1;
 int j,hno1,hno2;
 String hno,cname,i="0",pwd,x=null,y=null,radio=null,from,to,temp,hn,hn1,hn2,que="what is your pet name?";
 %>
 <%
 radio=request.getParameter("s");
 cname=request.getParameter("name");
 pwd=request.getParameter("pswd");
 if(radio==null)
   radio="abc";
 try
 {

  if(radio.equals("single"))
 {
  pst=con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
  	pst.setString(1,cname);
	pst.setString(2,i);
    pst.setString(3,i);
	pst.setString(4,i);
	pst.setString(5,i);
	pst.setString(6,i);
	pst.setString(7,i);
	pst.setString(8,i);
	pst.setString(9,i);
	pst.setString(10,i);
    pst.setString(11,i);
	pst.setString(12,i);
	pst.setString(13,i);
	pst.setString(14,i);
	pst.setString(15,i);
	pst.setString(16,i);
	pst.setInt(17,0);
	pst.setString(18,que);
	pst.setString(19,i);
	pst.executeUpdate();
     pst.close();
    %><jsp:forward page="addstu1.jsp">
	  <jsp:param name="x" value="<%=cname%>"/>
	  <jsp:param name="y" value="<%=pwd%>"/>
	  <jsp:param name="z" value="<%=radio%>"/>
	  </jsp:forward>
	<%
 }
else if(radio.equals("multiple"))
{
 from=request.getParameter("name1");
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
 to=request.getParameter("name2");
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
   pst=con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
  	pst.setString(1,hno);
	pst.setString(2,i);
    pst.setString(3,i);
	pst.setString(4,i);
	pst.setString(5,i);
	pst.setString(6,i);
	pst.setString(7,i);
	pst.setString(8,i);
	pst.setString(9,i);
	pst.setString(10,i);
    pst.setString(11,i);
	pst.setString(12,i);
	pst.setString(13,i);
	pst.setString(14,i);
	pst.setString(15,i);
	pst.setString(16,i);
	pst.setInt(17,0);
	pst.setString(18,que);
	pst.setString(19,i);
	pst.executeUpdate();
	pst.close();
	hno1++;
   }%>
   <jsp:forward page="addstu1.jsp">
	  <jsp:param name="x1" value="<%=from%>"/>
	  <jsp:param name="x2" value="<%=to%>"/>
	  <jsp:param name="z" value="<%=radio%>"/>
	  <jsp:param name="y" value="<%=pwd%>"/>
	  </jsp:forward>
 <% }
}
  catch(Exception e)
 {
   out.println(e);
   out.println("<center><h2><br><br><br><font color=#2271A0>Student already exists");
 }
%>
































