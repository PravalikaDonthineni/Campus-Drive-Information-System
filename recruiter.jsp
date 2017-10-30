<%@ include file="common.jsp" %>
<body background="ob018.jpg">
<%@ page import="java.sql.*"%>
<%! String eid,n1,n2,n3,n4,n5,n6,n7,n8;
  long i1,i2;
%>
<%
try
{
    n1=request.getParameter("rname");
 	n2=request.getParameter("company");
	n3=request.getParameter("remail");
    n4=request.getParameter("contactno");
	i1=Long.parseLong(n4);
	n5=request.getParameter("mobileno");
    i2=Long.parseLong(n5);
	n6=request.getParameter("address");
	n7=request.getParameter("website");
	eid=request.getParameter("id");

String str="update recruiter set rname='"+n1+"',company='"+n2+"',remail='"+n3+"',contactno="+i1+",mobileno="+i2+",address='"+n6+"',website='"+n7+"' where id='"+eid+"'";
System.out.println("-----------"+str);
	PreparedStatement pst=con.prepareStatement(str);
	pst.executeUpdate();
    pst.close();
%><jsp:include page="updater1.jsp"/> <%
}
catch(Exception e)
{
	out.println(e);
}

%>

































