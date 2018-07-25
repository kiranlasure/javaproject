<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
<%
String pno=request.getParameter("c1");
if(pno!=""&&pno!=null)
{
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","");

PreparedStatement pst=con.prepareStatement("select * from hr_add_new_project where pid=?");

pst.setString(1,pno);
ResultSet rs=pst.executeQuery();
if(rs.next())
{
pst=con.prepareStatement("insert into emp_add_new_project values(?,?,?,?,?,?,?)");

pst.setInt(1,rs.getInt(1));
pst.setString(2,rs.getString(2));
pst.setString(3,rs.getString(3));
pst.setString(4,rs.getString(5));
pst.setString(5,rs.getString(6));
pst.setString(6,rs.getString(7));
pst.setString(7,rs.getString(4));

int i=pst.executeUpdate();
if(i!=0)
{
pst=con.prepareStatement("delete from hr_add_new_project where pid=?");
pst.setString(1,pno);
pst.executeUpdate();
%>
<script language="javascript">
confirm("Do you want to add Project ?");
alert("Proejct added successfully");
window.open("empadd.jsp","_self");
</script>
<%

}
}

}
catch(Exception e)
{
out.println(""+e);
}
}
%>
