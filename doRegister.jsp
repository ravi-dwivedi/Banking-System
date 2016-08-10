<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,com.Bank" errorPage="" %>
<%
//java Code
String uname = request.getParameter("username");
String password = request.getParameter("password");
String question = request.getParameter("question");
String answer = request.getParameter("answer");
String address = request.getParameter("address");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String sql = "INSERT INTO user_details VALUES (12,'"+uname+"','"+password+"','"+question+"','"+answer+"','"+address+"','"+email+"',"+mobile+")";
//System.out.println(sql);
int update = Bank.update(sql);

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Online Bank</title>
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="css/main.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
html,body{
    background-image: url(images/img.gif);
}
</style>
</head>

<body>
<table width="900" border="1" align="center" cellpadding="0" cellspacing="0" style="font-weight:normal; background-color:#FFFFFF">
  <tr>
    <th colspan="3" scope="col" style="height:90px; background-color:#2175bc;"><img src="images/BR_banner.jpg" height=90 width=900/>
</th>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
<td width="160" ><p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>	</td>
    <td colspan="2" style="padding:20px;">
	<div class="box1">
	<% 
	if(update == 1){
	%>
	Account is Created Successfully.<br/><a href="index.jsp">Click Here</a> to Login and Acticvate Your Account.
	<%
	}else {
	%>
	<font color="#FF0000">Sorry!. Account is not created.<br/>Click Here to <a href="register.jsp">Register Again</a></font>
	<%
	}
	 %>
	</div>
	</td>
  </tr>
  <tr style="height:30px;">
    <td colspan="3" style="background-color:#2175bc;">&nbsp;</td>
  </tr>
</table>
</body>

</html>
