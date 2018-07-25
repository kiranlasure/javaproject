<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
<%@page import="javax.swing.*"%>

<%

String n=request.getParameter("t1");
String e=request.getParameter("t2");
String m=request.getParameter("t3");

if(n!=""&&n!=null&&e!=""&&e!=null)
{
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","");

PreparedStatement pst=con.prepareStatement("insert into cu values(?,?,?)");

pst.setString(1,n);
pst.setString(2,e);
pst.setString(3,m);

int i=pst.executeUpdate();

if(i!=0)
{
%>
<script language="javascript">
alert("Message has been submitted successfully");
return true;
</script>
<%
response.sendRedirect("cu.jsp");
}
}
catch(Exception ee)
{
JOptionPane.showMessageDialog(null,"Error Loading Page "+ee);
}
}

%>
