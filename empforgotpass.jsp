<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
<%@page import="javax.swing.*"%>
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
.style26 {
	font-size: small;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
.style27 {font-size: large; font-family: Verdana, Arial, Helvetica, sans-serif; }
body {
	background-image: url(backg.jpg);
}
.style32 {color: #FFFFFF; font-size: small; font-family: Geneva, Arial, Helvetica, sans-serif; }
.style33 {color: #FFCC00}
.style36 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; }
.style7 {	font-size: large;
	font-family: Geneva, Arial, Helvetica, sans-serif;
	font-weight: bold;
	color: #FF0000;
}
.style31 {font-family: Verdana, Arial, Helvetica, sans-serif}
.style39 {color: #FFFFFF}
-->
</style>
</head>

<body onload="MM_preloadImages('h2.jpg','ab2.jpg','comp2.jpg','cu2.jpg','login2.jpg')">
<table width="80%" border="0" align="center">
  <tr>
    <td><img src="main copy.jpg" width="100%" height="242" /></td>
  </tr>
</table>
<table width="80%" border="0" align="center">
  <tr>
    <td height="57"><a href="hrms.jsp" target="_self" onmouseover="MM_swapImage('Image2','','h2.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="h1.jpg" name="Image2" width="100%" border="0" id="Image2" /></a></td>
    <td><a href="abtus.jsp" target="_self" onmouseover="MM_swapImage('Image3','','ab2.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="ab1.jpg" name="Image3" width="100%" border="0" id="Image3" /></a></td>
    <td><a href="company.jsp" target="_self" onmouseover="MM_swapImage('Image4','','comp2.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="comp1.jpg" name="Image4" width="100%" border="0" id="Image4" /></a></td>
    <td><a href="cu.jsp" target="_self" onmouseover="MM_swapImage('Image5','','cu2.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="cu1.jpg" name="Image5" width="100%" border="0" id="Image5" /></a></td>
    <td><a href="login.jsp" target="_self" onmouseover="MM_swapImage('Image6','','login2.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="login1 copy.jpg" name="Image6" width="100%" border="0" id="Image6" /></a><a href="login.html" target="_self" onmouseover="MM_swapImage('Image6','','login2.jpg',1)" onmouseout="MM_swapImgRestore()"></a></td>
  </tr>
</table>
<table width="80%" border="0" align="center">
  <tr>
    <td height="21" align="left" valign="top" bgcolor="#3399FF"><div align="left" class="style27 style39">Recover Your Password </div></td>
  </tr>
  <tr>
    <td height="417" align="center" valign="top" bgcolor="#FFFFCC">   <p>&nbsp;</p>
      <form id="form1" name="form1" method="post" action="empforgotpass.jsp">
        <table width="45%" height="130" border="0">
          <tr>
            <td width="43%" height="26"><span class="style26">Employee ID:</span></td>
            <td width="57%"><input type="text" name="t1" /></td>
          </tr>
          <tr>
            <td height="26"><span class="style26">Email:</span></td>
            <td><input type="text" name="t2" /></td>
          </tr>
        </table>
        <table width="45%" height="69" border="0">
          <tr>
            <td width="43%" height="26"><span class="style26">DOB:</span></td>
            <td width="57%"><input name="d1" type="date" /></td>
          </tr>
        </table>
        <p>
          <input type="button" name="Reset2" value="Back" onclick="back1()" />
          <span class="style7">
          <input type="submit" name="Submit" value="Submit" id="br"/>
          </span>
          <input type="reset" name="Reset" value="Clear" />
        </p>
        <p>&nbsp;</p>
      </form>
      <p>&nbsp;</p>
    </td>
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
String uid=request.getParameter("t1");

if(uid!=null && uid!="")
{
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","");

PreparedStatement pst=con.prepareStatement("select cpass from signup where un=?");
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