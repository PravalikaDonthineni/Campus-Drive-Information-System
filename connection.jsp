
<%@ page import="java.sql.*"%>
<%! Connection con=null;
    PreparedStatement pst;
    ResultSet rs=null;
	ResultSetMetaData rsmd=null;
    Statement stmt;
%>
<%
try

{

DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","train","train");
 stmt=con.createStatement();

}
catch(Exception e)
{
out.println("cannot create");
}
%>
































