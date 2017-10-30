<%@ include file="common.jsp" %>
<%@page import = "java.sql.*"%>
<%!
 Statement stmt=null;
 ResultSet rs=null;
 PreparedStatement pst,pst1;
 String cname,i="0",pwd,x=null,y=null,sid1=null;
 %>
 <%
 cname=request.getParameter("name");
 pwd=request.getParameter("pswd");
 try
 {
  pst=con.prepareStatement("insert into recruiter values(?,?,?,?,?,?,?,?,?)");
  	pst.setString(1,cname);
	pst.setString(2,i);
    pst.setString(3,cname);
	pst.setString(4,i);
	pst.setString(5,i);
	pst.setString(6,i);
	pst.setString(7,i);
	pst.setString(8,i);
	pst.setString(9,i);
	pst.executeUpdate();
     pst.close();
    %><jsp:include page="addcomp1.jsp">
	  <jsp:param name="x" value="<%=cname%>"/>
	  <jsp:param name="y" value="<%=pwd%>"/>
	  </jsp:include>
	<%
  }

  catch(Exception e)
 {

  out.println(e);
   out.println("<center><h2><br><br><br><font color=#2271A0>Company already exists");
 }
%>
































