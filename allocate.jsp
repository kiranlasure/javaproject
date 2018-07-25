<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>HR Management System</title>
<script type="text/JavaScript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
<style type="text/css">
<!--
.style27 {
	font-size: large;
	font-family: Geneva, Arial, Helvetica, sans-serif;
}
.style28 {
	font-family: Geneva, Arial, Helvetica, sans-serif;
	font-size: small;
	font-weight: bold;
}
.style29 {
	font-family: Geneva, Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: medium;
}
body {
	background-image: url(backg.jpg);
}
.style32 {color: #FFFFFF; font-size: small; font-family: Geneva, Arial, Helvetica, sans-serif; }
.style33 {color: #FFCC00}
.style36 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; }
.style38 {font-size: medium}
.style31 {font-family: Verdana, Arial, Helvetica, sans-serif}
-->
</style>
</head>

<body onload="MM_preloadImages('h2.jpg','ab2.jpg','comp2.jpg','cu2.jpg','login2.jpg','ae1.jpg','ap1.jpg','vp1.jpg','lo.jpg','adp1.jpg')">
<table width="80%" border="0" align="center">
  <tr>
    <td><img src="main copy.jpg" width="100%" height="242" /></td>
  </tr>
</table>
<table width="80%" border="0" align="center">
  <tr>
    <td height="57"><a href="hrlogin.jsp" target="_self" onmouseover="MM_swapImage('Image2','','h2.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="h1.jpg" name="Image2" width="100%" border="0" id="Image2" /></a></td>
    <td><a href="addproject.jsp" target="_self" onmouseover="MM_swapImage('Image10','','adp1.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="adp.jpg" name="Image10" width="100%" border="0" id="Image10" /></a><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image7','','ae1.jpg',1)"></a><a href="abtus.html" target="_self" onmouseover="MM_swapImage('Image3','','ab2.jpg',1)" onmouseout="MM_swapImgRestore()"></a></td>
    <td><a href="allocate.jsp" target="_self" onmouseover="MM_swapImage('Image8','','ap1.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="ap.jpg" name="Image8" width="100%" border="0" id="Image8" /></a><a href="company.html" target="_self" onmouseover="MM_swapImage('Image4','','comp2.jpg',1)" onmouseout="MM_swapImgRestore()"></a></td>
    <td><a href="viewproject.jsp" target="_self" onmouseover="MM_swapImage('Image9','','vp1.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="vp.jpg" name="Image9" width="100%" border="0" id="Image9" /></a><a href="cu.html" target="_self" onmouseover="MM_swapImage('Image5','','cu2.jpg',1)" onmouseout="MM_swapImgRestore()"></a></td>
    <td><a href="hrms.jsp" target="_self" onmouseover="MM_swapImage('Image6','','lo.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="log.jpg" name="Image6" width="100%" border="0" id="Image6" /></a><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image6','','login2.jpg',1)"></a><a href="login.html" target="_self" onmouseover="MM_swapImage('Image6','','login2.jpg',1)" onmouseout="MM_swapImgRestore()"></a></td>
  </tr>
</table>
<table width="80%" border="0" align="center">
  <tr>
    <td bgcolor="#FF6633"><span class="style27"><span class="style27">HR ID:<%=session.getAttribute("myuser")%>&nbsp;&nbsp;&nbsp;&nbsp;Last Login:<%=session.getAttribute("date")%></span></span></td>
  </tr>
</table>
<table width="80%" align="center" bordercolor="#FFCCCC">
  <tr>
    <td width="25%" align="center" valign="top" bgcolor="#666666"><p><a href="ademp.jsp" target="_self"><img src="addemp.jpg" width="225" height="64" border="0" /></a></p>
    <p><a href="rmvemp.jsp" target="_self"><img src="rmemp.jpg" width="225" height="64" border="0" /></a></p>
    <p><a href="prjst.jsp" target="_self"><img src="ps.jpg" width="225" height="64" border="0" /></a></p>
    <p><a href="hrviewrpt.jsp" target="_self"><img src="rpt.jpg" width="225" height="64" border="0" /></a></p>
    <p><a href="hrcreatemsg.jsp" target="_self"><img src="crm.jpg" width="225" height="64" border="0" /></a></p>
    <p><a href="hrinbox.jsp" target="_self"><img src="inb.jpg" width="225" height="64" border="0" /></a></p></td>
    <td height="417" align="center" valign="top" bgcolor="#FFCC99"><p align="center" class="style28"><span class="style29">Allocate  Project To Employee </span></p>
      <hr />
      <form id="form1" name="form1" method="post" action="allocate.jsp">
        <table width="65%" height="233" border="0">
          <tr>
            <td width="41%"><span class="style27">Employee ID :</span></td>
            <td width="59%"><select name="t1">
            <option>Select Employee Id</option>
			<%
			Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","");

			PreparedStatement ps=con.prepareStatement("select eid from admin_addnewemployee");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
			%>
			<option value="<%=rs.getInt(1)%>"><%=rs.getInt(1)%></option>
			<%
			}
			
			%></select>
			</td>
          </tr>
          <tr>
            <td><span class="style27">Employee Name : </span> </td>
            <td><input type="text" name="t2" width="200px;"/></td>
          </tr>
          <tr>
            <td><span class="style27">Department:</span></td>
            <td><select name="t3">
              <option>-Select Department-</option>
              <option value="Design">Design</option>
              <option value="Modeling">Modeling</option>
              <option value="Management">Management</option>
              <option value="Deployment">Deployment</option>
            </select>
            </td>
          </tr>
          <tr>
            <td><span class="style27">Project ID : </span></td>
            <td><select name="t4">
            <option>-Select Project Id-</option>
			<%
			

			PreparedStatement psm=con.prepareStatement("select pid from hr_add_new_project");
			ResultSet rs1=psm.executeQuery();
			while(rs1.next())
			{
			%>
			<option value="<%=rs1.getInt(1)%>"><%=rs1.getInt(1)%></option>
			<%
			}
			
			%></select>&nbsp;</td>
          </tr>
          <tr>
            <td><span class="style27">Project Name :</span>&nbsp;</td>
            <td><input type="text" name="t5" width="200px;" /></td>
          </tr>
          <tr>
            <td><span class="col-xs-4 col-md-4"><span class="style27">Start Date :</span> &nbsp;  &nbsp;</span></td>
            <td><input type="date" name="d1">&nbsp;</td>
          </tr>
          <tr>
            <td><span class="col-xs-4 col-md-4"><span class="style27">Submission Date  :</span></span></td>
            <td><input type="date" name="d2">&nbsp;</td>
          </tr>
          <tr>
            <td><span class="style27">Duration:</span>&nbsp;</td>
            <td><input type="text" name="t6" width="200px;" /></td>
          </tr>
        </table>
        <p align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</p>
   
      
        <div align="center">
          <input type="submit" name="Submit" value="Save" />
          &nbsp;&nbsp;&nbsp; &nbsp;
          <input type="reset" name="Submit2" value="Clear" />
          &nbsp;&nbsp; &nbsp;&nbsp;
          <input type="submit" name="Submit22" value="Update" />
        </div>
      </form>
    <p align="center"></p></td>
  </tr>
</table>
<table width="80%" border="0" align="center">
  <tr>
    <td height="46" valign="top" bgcolor="#333333"><p class="style32"><span class="style31">Copyright@2016, Shree Softwares Pvt. Ltd. </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style36"><a href="facebook.htm" target="_blank"><img src="099303-facebook-logo-square.png" width="38" height="37" border="0" /></a><a href="Twitter.htm" target="_blank"><img src="icon-bw-twitter.png" width="34" height="34" border="0" /></a></span><span class="style36"><a href="Google+.htm" target="_blank"><img src="google-plus.png" width="30" height="28" border="0" /></a></span></p>
        <hr />
        <span class="style32"><span class="style33">&nbsp;<a href="hrms.jsp" target="_self">Home</a>|<a href="abtus.jsp" target="_self">About Us</a>|<a href="company.jsp" target="_self">Company</a>|<a href="cu.jsp" target="_self">Contact Us </a></span>&nbsp; &nbsp;&nbsp;&nbsp;<span class="style31">Webiste Designed by Ashish &amp; Prasad (T.Y.B.Sc.comp.sci.) &nbsp;&nbsp;All Rights Reserved. &nbsp;</span>&nbsp;&nbsp;</span>
        <p align="right" class="style32"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  &nbsp;</p></td>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>

<% 
String eid=request.getParameter("t1");
String ename=request.getParameter("t2");
String dept=request.getParameter("t3");
String pid=request.getParameter("t4");
String pname=request.getParameter("t5");
String startdt=request.getParameter("d1");
String subdt=request.getParameter("d2");
String duration=request.getParameter("t6");
if(eid!=""&&eid!=null)
{
try
{


PreparedStatement pst=con.prepareStatement("insert into hr_allocate_project values(?,?,?,?,?,?,?,?)");

pst.setString(1,eid);
pst.setString(2,ename);
pst.setString(3,dept);
pst.setString(4,pid);
pst.setString(5,pname);
pst.setString(6,startdt);
pst.setString(7,subdt);
pst.setString(8,duration);

int i=pst.executeUpdate();
if(i!=0)
{
%>
<script language="javascript">
alert("Project Allocated Successfully");
</script>
<%
}
else
{
%>
<script language="javascript">
alert("Failed to Insert Data");
</script>
<%
}
}
catch(Exception e)
{
out.print(""+e);
}}
%>

