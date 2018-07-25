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
.style7 {
	font-size: large;
	font-family: Geneva, Arial, Helvetica, sans-serif;
	font-weight: bold;
	color: #990033;
}
.style31 {font-family: Verdana, Arial, Helvetica, sans-serif}
.style32 {color: #FFFFFF; font-size: small; font-family: Geneva, Arial, Helvetica, sans-serif; }
.style36 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; }
.style33 {color: #FFCC00}
body {
	background-image: url(backg.jpg);
	background-color: #F0F0F0;
}
.style39 {font-size: medium; font-family: Geneva, Arial, Helvetica, sans-serif; font-weight: bold; color: #990033; }
.style43 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
}
.style54 {font-size: medium; font-family: Arial, Helvetica, sans-serif; color: #666666; }
.style56 {font-size: large; font-family: Geneva, Arial, Helvetica, sans-serif; font-weight: bold; color: #FFFFFF; }
.style57 {font-size: large; font-family: Geneva, Arial, Helvetica, sans-serif; font-weight: bold; color: #3399FF; }
.style59 {font-family: Arial, Helvetica, sans-serif; font-size: large; color: #666666; }
.style60 {
	font-size: large;
	color: #666666;
}
.style61 {color: #333333}
-->
</style>
</head>

<body onload="MM_preloadImages('h2.jpg','ab2.jpg','comp2.jpg','cu2.jpg','login2.jpg')">
<table width="80%" border="0" align="center">
  <tr>
    <td><img src="main copy.jpg" width="100%" height="242" /></td>
  </tr>
</table>
<table width="80%" border="0" align="center" bordercolor="#CCCCCC">
  <tr bordercolor="#F0F0F0">
    <td height="57"><a href="hrms.jsp" target="_self" onmouseover="MM_swapImage('Image2','','h2.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="h1.jpg" name="Image2" width="100%" border="0" id="Image2" /></a></td>
    <td><a href="abtus.jsp" target="_self" onmouseover="MM_swapImage('Image3','','ab2.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="ab1.jpg" name="Image3" width="100%" border="0" id="Image3" /></a></td>
    <td><a href="company.jsp" target="_self" onmouseover="MM_swapImage('Image12','','comp2.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="comp2.jpg" name="Image12" width="100%" border="0" id="Image12" /></a><a href="company.jsp" target="_self" onmouseover="MM_swapImage('Image4','','comp2.jpg',1)" onmouseout="MM_swapImgRestore()"></a></td>
    <td><a href="cu.jsp" target="_self" onmouseover="MM_swapImage('Image5','','cu2.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="cu1.jpg" name="Image5" width="100%" border="0" id="Image5" /></a></td>
    <td><a href="login.jsp" target="_self" onmouseover="MM_swapImage('Image10','','login2.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="login1 copy.jpg" name="Image10" width="100%" border="0" id="Image10" /></a><a href="login.html" target="_self" onmouseover="MM_swapImage('Image6','','login2.jpg',1)" onmouseout="MM_swapImgRestore()"></a></td>
  </tr>
</table>
<table width="80%" border="0" align="center" >
  <tr valign="top" align="center">
    <td width="27%" valign="top" bgcolor="#FFFFCC"><table width="80%" height="243" border="0">
      <tr>
        <td bgcolor="#3399FF"><div align="center"><span class="style56">ABOUT COMPANY </span></div></td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF"><div align="left" onmouseover="this.bgColor='#CCFF99'" onmouseout="this.bgColor='#FFFFFF'"><span class="style54">Company Profile </span></div></td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF"><div align="left"><span class="style54">Vision and Mission </span></div></td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF"><div align="left"><span class="style54">Social Responsibility </span></div></td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF"><div align="left"><span class="style54">Awards</span></div></td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF"><div align="left"><span class="style54">History</span></div></td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF"><div align="left"><span class="style54">Certifications</span></div></td>
      </tr>
    </table>
    <p>&nbsp;</p>
    <p class="style57">Whats New</p>
    <hr /><marquee direction="up" scrolldelay="200" onmouseover="this.stop();" onmouseout="this.start();">
    <p align="center" class="style59 style60">New Projects </p>
    <p align="center" class="style59">New Jobs Opening </p>
    <p align="center" class="style59">Open Campuses</p>
    </marquee>
    <p class="style36">&nbsp; </p></td>
    <td width="73%" height="545" valign="top" bgcolor="#FFFFFF" align="left"><h3 class="style57">Company Vision</h3>
      <hr />
      <p class="style43">Company is dedicated to becoming a company that is recognized and   respected by employees, shareholders, customers, and the society.</p>
      <ul>
        <li class="style43">We strive for the balance between company expansion and the   development of society through consistent operations in compliance with   laws, effective environmental protection programs and fruitful Corporate   Social Responsibility initiatives;</li>
        <li class="style43">We constantly create value for customers and investors through innovation, process improvement and employee development;</li>
        <li class="style43">We are committed to bring shareholders&rsquo; sound and long-term returns via continued improvement of our business operations;</li>
        <li class="style43">We respect employees' personalities, invest in their career   development and quality of life, and offer competitive rewards based on   their contributions.</li>
      </ul>
      <h3 class="style57">Company Mission</h3>
      <hr />
      <p class="style43"> To become a globally leading IT solution &amp; service provider   through continuous organizational and process optimization, leadership   and employee development, and a commitment to strategic alliances and   open innovation.</p>
      <h3 class="style57">Company Values</h3>
      <hr />
      <ul>
        <li class="style43">Simplicity</li>
        <li class="style43">Accountability</li>
        <li class="style43">Collaboration</li>
        <li class="style43">Respect</li>
        <li class="style43">Integrity</li>
      </ul>    </td>
  </tr>
</table>
<table width="80%" height="%%" border="0" align="center">
  <tr>
    <td width="34%" valign="top" bgcolor="#FFFFFF"><img src="business-team-chart-company-growth-11896784.jpg" width="100%" height="200" /></td>
    <td width="33%" valign="top" bgcolor="#FFFFFF"><img src="header-10.jpg" width="100%" height="200" /></td>
    <td width="33%" height="202" valign="top" bgcolor="#FFFFFF"><p align="center" class="style7"><img src="vision.jpg" width="100%" height="200" /></p>  </td>
  </tr>
</table>
<table width="80%" border="0" align="center">
  <tr>
    <td height="21" valign="top" bgcolor="#3399FF" align="center"><p class="style39 style61">Visitor Count:<%=session.getAttribute("counter")%> </p>    </td>
  </tr>
</table>
<table width="80%" border="0" align="center">
  <tr>
    <td height="46" valign="top" bgcolor="#333333"><p class="style32"><span class="style31">Copyright@2016, Shree Softwares Pvt. Ltd. </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style36"><a href="facebook.htm" target="_blank"><img src="099303-facebook-logo-square.png" width="38" height="37" border="0" /></a><a href="Twitter.htm" target="_blank"><img src="icon-bw-twitter.png" width="34" height="34" border="0" /></a><a href="Google+.htm" target="_blank"><img src="google-plus.png" width="30" height="28" border="0" /></a></span></p>
        <hr />
        <span class="style32"><span class="style33">&nbsp;<a href="hrms.jsp" target="_self">Home</a>|<a href="abtus.jsp" target="_self">About Us</a>|<a href="company.jsp" target="_self">Company</a>|<a href="cu.jsp" target="_self">Contact Us </a></span>&nbsp; &nbsp;&nbsp;&nbsp;<span class="style31">Webiste Designed by Ashish &amp; Prasad (T.Y.B.Sc.comp.sci.) &nbsp;&nbsp;All Rights Reserved. &nbsp;</span>&nbsp;&nbsp;</span>
        <p align="right" class="style32"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  &nbsp;</p></td>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
<%
String s=(String)session.getAttribute("counter");

if(s==null)
s="0";

int c=Integer.parseInt(s);
c++;
session.setAttribute("counter",""+c);
%>