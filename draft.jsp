<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*,java.sql.*,com.Bank" errorPage="" %>
<%
//java Code

String uname = (String)session.getAttribute("cust_name");
String sql = "SELECT acc_no, acc_type FROM acc_details WHERE uname='"+uname+"'";
ArrayList one = Bank.getAccountByName(sql);
//System.out.println(one);
String sql_1 = "SELECT acc_no, acc_type FROM acc_details";
ArrayList one1 = Bank.getAccountByName(sql_1);

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
    <li><a href="">Welcome,&nbsp;<%= (String)session.getAttribute("cust_name")%></a></li>
    <li><a href="account.jsp">Create Account</a></li>
	<li><a href="deposite.jsp">Deposite</a></li>
    <li><a href="withdraw.jsp">Do Withdraw</a></li>
    <li><a href="get-balance.jsp">Get Balance</a></li>
	<li><a href="transfer.jsp">Trasnsfer Amount</a></li>

	<li><a href="view-reports.jsp">View Report</a></li>
	<li><a href="loan.jsp">Request Loan</a></li>
    <li><a href="draft.jsp">Request Draft</a></li>
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
	<form id="form1" name="form1" method="post" action="doDraft.jsp">
	  <table width="80%" border="0" align="center" cellpadding="2" cellspacing="2">
        <tr>
          <th colspan="3" bgcolor="#333333" scope="col"><font color="#FFFFFF">Please Select the Account to Check Your Current Balance </font></th>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><div align="right"><strong>Account Holder Name </strong></div></td>
          <td>:</td>
          <td>&nbsp;<%= uname %></td>
        </tr>
        <tr>
          <td width="43%"><div align="right"><strong>Select Source Account No.</strong></div></td>
          <td width="2%">:</td>
          <td width="55%"> <select name="accNo">
			<%
			for(int i=0; i<one.size(); i++) {
			%>
			<option value="<%=(String)one.get(i)%>"> <%=(String)one.get(i)%>:<%=(String)one.get(++i)%></option>
			<% } %>
			</select>          </td>
        </tr>
        <tr>
          <td><div align="right"><strong>Amount</strong></div></td>
          <td>:</td>
          <td><label>
            <input name="Amount" type="text" id="Amount" size="10" />
            Rs.</label></td>
        </tr>
        <tr>
          <td><div align="right"><strong>Details</strong></div></td>
          <td>:</td>
          <td><label>
            <textarea name="textfield2" cols="30" rows="4"></textarea>
          </label></td>
        </tr>
        <tr>
          <td><div align="right"><strong>Address</strong></div></td>
          <td>:</td>
          <td><label>
            <textarea name="textfield1" cols="30" rows="4" id="textfield1"></textarea>
          </label></td>
        </tr>
        <tr>
          <td><blockquote>
            <blockquote>
              <p>&nbsp;</p>
            </blockquote>
          </blockquote></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><label>
          <input type="submit" name="Submit" value="Submit  " />
          </label></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
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
