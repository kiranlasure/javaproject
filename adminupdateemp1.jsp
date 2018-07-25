
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
<%

String eid=request.getParameter("t");
String fname=request.getParameter("t1");
String mname=request.getParameter("t2");
String lname=request.getParameter("t3");
String address=request.getParameter("t4");
String gender=request.getParameter("t5");
String dob=request.getParameter("d1");
String contact=request.getParameter("t6");
String email=request.getParameter("t7");
String desgn=request.getParameter("t8");
String wtype=request.getParameter("t9");
String activedt=request.getParameter("d2");
Object en1=session.getAttribute("eno");
String ssc=en1.toString();

if(fname!=""&&fname!=null&&ssc!=null&&ssc!="")
{
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","");


PreparedStatement pst=con1.prepareStatement("update admin_addnewemployee set admin_addnewemployee.fname=? and mname=? and lname=? and address=? and gender=? and dob=? and contact=? and email=? and desgn=? and wtype=? and activedt=? where admin_addnewemployee.eid=?");


pst.setString(1,fname);
pst.setString(2,mname);
pst.setString(3,lname);
pst.setString(4,address);
pst.setString(5,gender);
pst.setString(6,dob);
pst.setString(7,contact);
pst.setString(8,email);
pst.setString(9,desgn);
pst.setString(10,wtype);
pst.setString(11,activedt);
pst.setInt(12,Integer.parseInt(ssc));
int i=pst.executeUpdate();
if(i!=0)
{

%>
<script language="javascript">
alert("Employee Updated Successfully");
window.open("adminlogin.jsp","_self");
</script>
<%
}
}
catch(Exception e)
{
out.println("error=>"+e);
}}
%>

