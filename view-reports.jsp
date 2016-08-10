<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*,java.sql.*,com.Bank" errorPage="" %>
<%
//java Code

String uname = (String)session.getAttribute("cust_name");
String sql = "SELECT acc_no, operation, amt, balance, time FROM tx_details WHERE uname='"+uname+"'";
//System.out.println(sql);
ArrayList one = Bank.getAccountDetailsByName(sql);
//System.out.println(one);
int size = one.size();
if(size < 1) {
	response.sendRedirect("noAcc.jsp");
}
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
.style2 {color: #FFFFFF; font-weight: bold; }
</style>
</head>

<body>
<table width="900" border="1" align="center" cellpadding="0" cellspacing="0" style="font-weight:normal; background-color:#FFFFFF">
  <tr>
    <th colspan="3" scope="col" style="height:90px; background-color:#2175bc;"><img src="images/BR_banner.jpg" height=90 width=900/></th>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
<td width="160" >
<div id="ddblueblockmenu">
  <div class="menutitle">Account Operations</div>
  <ul>
    <li><a href="main.jsp">Welcome,&nbsp;<%= (String)session.getAttribute("cust_name")%></a></li>
    <li><a href="account.jsp">Create Account</a></li>
	<li><a href="deposite.jsp">Deposite</a></li>
    <li><a href="withdraw.jsp">Do Withdraw</a></li>
    <li><a href="get-balance.jsp">Get Balance</a></li>
	<li><a href="transfer.jsp">Trasnsfer Amount</a></li>
	<li><a href="view-reports.jsp">View Report</a></li>
	<li><a href="loan.jsp">Request Loan</a></li>
	<li><a href="draft.jsp">Request Demand Draft</a></li>
	<li><a href="logOff.jsp">LogOut</a></li>
  </ul>
  <div class="menutitle">&nbsp;</div>
</div>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>	</td>
    <td colspan="2" style="padding:20px;line-height:20px;">
	<div class="box1">
	<marquee><h2><font color="#FF0000">Online Bank.</font></h2></marquee>
	</div>
	<br/>
	<br/>
	<form id="form1" name="form1" method="post" action="get-balance-fanal.jsp">
	  <table width="96%" border="0" align="center" cellpadding="2" cellspacing="2">
        <tr>
          <th colspan="5" bgcolor="#333333" scope="col"><font color="#FFFFFF">Following are the Repost of Your Acount(s). </font></th>
        </tr>
        <tr>
          <td colspan="5">&nbsp;</td>
          </tr>
        <tr>
          <td bgcolor="#2175BC"><div align="center" class="style2">Acc No. </div></td>
          <td bgcolor="#2175BC"><div align="center" class="style2">Operation</div></td>
          <td bgcolor="#2175BC"><div align="center" class="style2">Amt</div></td>
          <td bgcolor="#2175BC"><div align="center" class="style2">Balance</div></td>
          <td bgcolor="#2175BC"><div align="center" class="style2">Date - Time </div></td>
        </tr>
		<%
		for(int i=0;i<one.size();i++) {
		%>
        <tr>
          <td><div align="center"><%=(String)one.get(i)%></div></td>
          <td><div align="center"><%=(String)one.get(++i)%></div></td>
          <td><div align="center"><%=(String)one.get(++i)%></div></td>
          <td><div align="center"><%=(String)one.get(++i)%></div></td>
          <td><div align="center"><%=(String)one.get(++i)%></div></td>
        </tr>
		<% } %>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td width="14%">&nbsp;</td>
          <td width="14%">&nbsp;</td>
          <td width="15%">&nbsp;</td>
          <td width="16%">&nbsp;</td>
          <td width="41%">&nbsp;</td>
        </tr>
      </table>
      </form>
	</td>
  </tr>
  <tr style="height:30px;">
    <td colspan="3" style="background-color:#2175bc;">&nbsp;</td>
  </tr>
</table>
</body>

</html>
