<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
<%
String uid=request.getParameter("t1");

if(uid!=null && uid!="")
{
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","");

PreparedStatement pst=con.prepareStatement("select password from mylogin where user=?");
pst.setString(1,uid);

ResultSet rsm=pst.executeQuery();

if(rsm.next())
{
%>
<script language="javascript">
alert("Your Password is <%=rsm.getString(1)%>");
window.open("hrms.jsp","_self");
</script>
<%
//response.sendRedirect("hrms.jsp");
}
}
catch(Exception ee)
{
out.print(""+ee);
}
}
%>