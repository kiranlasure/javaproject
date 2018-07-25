    
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
<% 
String uid=request.getParameter("t1");
String em=request.getParameter("t2");
String name=request.getParameter("t3");
String dob=request.getParameter("d1");
if(uid!=""&&uid!=null)
{
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","");
/*
PreparedStatement pst=con.prepareStatement("select * from admin,mylogin,admin_mylogin where admin.aid=admin_mylogin.aid and mylogin.user=admin_mylogin.user and mylogin.user=? and admin.email=? and admin.aname=? and admin.dob=?");


pst.setString(1,uid);
pst.setString(2,em);
pst.setString(3,name);
pst.setString(4,dob);

ResultSet rs=pst.executeQuery();
*/
//if(rs.next())
//{
out.print("hii");
String ags="select password from mylogin where user='"+uid+"'";
Statement stm=con.createStatement();
ResultSet rsm=stm.executeQuery(ags);
if(rsm.next())
{
String psw=rsm.getString(1);
session.setAttribute("ps",psw);
%>
<script language="javascript">
alert("Your Password is <%=session.getAttribute("ps")%>");
</script>
<%
response.sendRedirect("ch.html");
}
//}
}
catch(Exception e)
{
out.print(""+e);
}
}
%>
