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
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
<style type="text/css">
<!--
.style15 {
	color: #FFFFFF;
	font-size: large;
	font-family: Geneva, Arial, Helvetica, sans-serif;
}
.style27 {
	font-size: large;
	font-family: Geneva, Arial, Helvetica, sans-serif;
}
.style32 {color: #FFFFFF; font-size: small; font-family: Geneva, Arial, Helvetica, sans-serif; }
.style33 {color: #FFCC00}
.style36 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; }
body {
	background-image: url(backg.jpg);
}
.style46 {color: #990000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; }
-->
</style>
</head>

<body onload="MM_preloadImages('h2.jpg','ab2.jpg','comp2.jpg','cu2.jpg','login2.jpg','ae1.jpg','vp1.jpg','lo.jpg','adp1.jpg','add1.jpg','view1.jpg','downloads1.jpg')">
<table width="80%" border="0" align="center">
  <tr>
    <td><img src="main copy.jpg" width="100%" height="242" /></td>
  </tr>
</table>
<table width="80%" border="0" align="center">
  <tr>
    <td height="57"><a href="employeelogin.jsp" target="_self" onmouseover="MM_swapImage('Image2','','h2.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="h1.jpg" name="Image2" width="100%" border="0" id="Image2" /></a></td>
    <td><a href="adminaddprj.html" target="_self" onmouseover="MM_swapImage('Image10','','adp1.jpg',1)" onmouseout="MM_swapImgRestore()"></a><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image7','','ae1.jpg',1)"></a><a href="abtus.html" target="_self" onmouseover="MM_swapImage('Image3','','ab2.jpg',1)" onmouseout="MM_swapImgRestore()"></a><a href="empadd.jsp" target="_self" onmouseover="MM_swapImage('Image9','','add1.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="add.jpg" name="Image9" width="100%" border="0" id="Image9" /></a></td>
    <td><a href="adminap.html" target="_self"></a><a href="company.html" target="_self" onmouseover="MM_swapImage('Image4','','comp2.jpg',1)" onmouseout="MM_swapImgRestore()"></a><a href="empview.jsp" target="_self" onmouseover="MM_swapImage('Image10','','view1.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="view.jpg" name="Image10" width="100%" border="0" id="Image10" /></a></td>
    <td><a href="adminview.html" target="_self" onmouseover="MM_swapImage('Image9','','vp1.jpg',1)" onmouseout="MM_swapImgRestore()"></a><a href="downloads.jsp" target="_self" onmouseover="MM_swapImage('Image11','','downloads1.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="downloads.jpg" name="Image11" width="100%" border="0" id="Image11" /></a><a href="cu.html" target="_self" onmouseover="MM_swapImage('Image5','','cu2.jpg',1)" onmouseout="MM_swapImgRestore()"></a></td>
    <td><a href="hrms.jsp" target="_self" onmouseover="MM_swapImage('Image6','','lo.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="log.jpg" name="Image6" width="100%" border="0" id="Image6" /></a><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image6','','login2.jpg',1)"></a><a href="login.html" target="_self" onmouseover="MM_swapImage('Image6','','login2.jpg',1)" onmouseout="MM_swapImgRestore()"></a></td>
  </tr>
</table>
<table width="80%" border="0" align="center">
  <tr>
    <td bgcolor="#FF6633"><span class="style27"> Employee ID: <%=session.getAttribute("empuser")%>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Last Login:<%=session.getAttribute("date1")%>
	 </span></td>
  </tr>
</table>
<table width="80%" align="center">
  <tr>
    <td width="25%" align="center" valign="top" bgcolor="#666666"><p><a href="ademp.html" target="_self"></a><a href="newemp.html" target="_self"></a><a href="profile.html" target="_self"></a><a href="createmsg.jsp" target="_self"><img src="crm.jpg" width="225" height="64" border="0" /></a></p>
      <p><a href="rmvemp.html" target="_self"></a><a href="adminee.html" target="_self"></a><a href="empinbox.jsp" target="_self"><img src="inb.jpg" width="225" height="64" border="0" /></a></p>
      <p><a href="prjst.html" target="_self"></a><a href="adminrmv.html" target="_self"></a><a href="empreport.jsp" target="_self"><img src="rpt.jpg" width="225" height="64" border="0" /></a></p>
    <p><a href="prjst.html" target="_self"></a><a href="adminrmv.html" target="_self"></a></p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p><a href="employeechangepass.jsp" target="_self" class="style46">Change Password</a></p>
    </td>
    <td height="405" align="center" valign="top" bgcolor="#FFCC99">   <p align="center" class="style27">Change Password </p>
      <hr />
      <form id="form1" name="form1" method="post" action="adminchangepass.jsp">
        <table width="55%" height="151" border="0">
          <tr>
            <td width="57%" class="style27">Old Password : </td>
            <td width="43%"><input type="password" name="t1" />
            </td>
          </tr>
          <tr>
            <td class="style27">New Password : </td>
            <td><input type="password" name="t2" />
            </td>
          </tr>
          <tr>
            <td class="style27">Confirm Password : </td>
            <td><input type="password" name="t3" /></td>
          </tr>
        </table>
        <p>
          <input type="submit" name="Submit" value="Change" />
        </p>
      </form>
      <p align="center">&nbsp;</p>
    <p>&nbsp;</p></td>
  </tr>
</table>
<table width="80%" border="0" align="center">
  <tr>
    <td height="46" valign="top" bgcolor="#333333"><p class="style32">Copyright@2015, Shree Softwares Pvt. Ltd. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style36"><a href="www.facebook.com" target="_blank"><img src="099303-facebook-logo-square.png" width="38" height="37" border="0" /></a><a href="www.twitter.com" target="_blank"><img src="icon-bw-twitter.png" width="34" height="34" border="0" /></a></span><span class="style36"><a href="www.googleplus.com" target="_blank"><img src="google-plus.png" width="30" height="28" border="0" /></a></span></p>
        <hr />
    <p align="left" class="style32"> &nbsp;<span class="style33"><a href="hrms.html" target="_self">Home</a>|<a href="abtus.html" target="_self">About Us</a>|<a href="company.html" target="_self">Company</a>|<a href="cu.html" target="_self">Contact Us </a></span>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  &nbsp;</p></td>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>

<% 

Object u=session.getAttribute("empuser");
String cp=request.getParameter("t3");
if(cp!=""&&cp!=null)
{
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","");

PreparedStatement pst=con.prepareStatement("update signup set cpass=? where un=? ");

session.setAttribute("npass",cp);
pst.setString(1,cp);
pst.setString(2,u.toString());


int i=pst.executeUpdate();
if(i!=0)
{
%>
<script language="javascript">
alert("Password Changed Successfully.!New Password is <%=session.getAttribute("npass")%> Please Relogin to Continue");
window.open("hrms.jsp","_self");
</script>
<%
//response.sendRedirect("hrms.jsp");
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
}
}
%>
