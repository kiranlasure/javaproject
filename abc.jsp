<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="java.io.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<form action="abc.jsp">
  <p>
  <input type="file" name="f">
  </p>
  <p>
    <input type="submit" />
    </p>
</form>
</body>
</html>
<%

String ii="c.png";
 out.println("<img src="+ii+">");

String u=request.getParameter("f");

if(u!=""&&u!=null)
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","");

Statement stm=con.createStatement();
String a="insert into img values('"+u+"')";
int i=stm.executeUpdate(a);
String d="select * from img";
ResultSet r=stm.executeQuery(d);
if(r.next())
{
 %> 
<img src="<%=r.getString(1)%>");
<%
}
}
%>