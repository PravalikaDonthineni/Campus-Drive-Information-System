<%@ page import="java.sql.*"%>
<%!
     Connection con = null;
     Statement st = null,st1=null,st2=null,st3=null,st4=null;
%>
<%
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","train","train");
st=con.createStatement();
st1=con.createStatement();
st2=con.createStatement();
st3=con.createStatement();
st4=con.createStatement();
%>
