<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
       
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
#assets {
	height: 500px;
	width: 500px;
	margin-top: 50px;
	margin-right: auto;
	margin-bottom: auto;
	margin-left: 100px;
}
#liabilites {
	height: 500px;
	width: 500px;
	margin-top: -500px;
	margin-right: 250px;
	margin-bottom: auto;
	margin-left: auto;
}
body {
	background-image: url();
}
body,td,th {
	color: rgb(0,0,0);
	font-family: "Segoe WP Black";
}
#header {
	height: 80px;
	width: 400px;
	background-color: rgb(0,0,0);
	margin-top: auto;
	margin-right: auto;
	margin-bottom: auto;
	margin-left: auto;
}
#header {
	text-align: center;
}
#header {
	font-size: 18px;
}
#header {
	color: rgb(255,255,255);
}
</style>
</head>
<body>
<div id="header">
  Balance Sheet for Appeveli<br />
  As of Feburary 28, 2015
</div>
<div id="assets"> 
<form:form method="post">
 <table width="502" height="422" >

<th>ASSETS</th><br /><br />
<tr><td>Cash  </td><td><input name="cash" type="text" /></td></tr><br />
<tr><td>Accounts Receivable</td> <td><input name="accountsReceivable" type="text" /></td></tr>
<tr><td>Prepaid Expense</td> <td><input name="prepaidExpenses" type="text" /></td></tr>
<tr><td>Inventory</td> <td><input name="inventory" type="text" /></td></tr>
<tr><td style="color: rgb(255,0,0)">Total Current Assets</td> <td><label name="totalAssets"></label></td></tr><br /><br />

<th>Fixed Assets</th><br /><br />
<tr><td>Property,Plant and Equipment </td><td><input name="property" type="text" /></td></tr><br />
<tr><td>Accumulated Depreciation</td> <td><input name="accumDepre" type="text" /></td></tr>
<tr><td>Net Fixed Assets</td> <td><label name="totalFixed">Total</label></td></tr>


<tr><td style="color: rgb(255,0,0)">Total Assets</td> <td><label name="totalFixed"></label></td></tr>

</table>
</div>

<div id="liabilites">
  <table width="502" height="422" >
  <th><table width="502" height="422" >
  <th>Liabilites</th>
    <br />
    <br />
  <tr>
    <td>Accounts Payable </td>
    <td><input name="accountsPayable" type="text" /></td>
  </tr>
  <br />
  <tr>
    <td>Accured Expenses</td>
    <td><input name="accuredExpenses" type="text" /></td>
  </tr>
  <tr>
    <td>Current Portion of Debt</td>
    <td><input name="portionDebt" type="text" /></td>
  </tr>
  <tr>
    <td>Tax Payable</td>
    <td><input name="taxPayable" type="text" /></td>
  </tr>
  <tr>
    <td style="color: rgb(255,0,0)">Current Liablities</td>
    <td><label name="totalAssets"></label></td>
  </tr>
  <br />
  <br />
  <th>Long-Term Liabilities</th>
    <br />
    <br />
  <tr>
    <td>Capital Stock</td>
    <td><input name="capitalStock" type="text" /></td>
  </tr>
  <br />
  <tr>
    <td>Retained Earnings</td>
    <td><input name="retainedErnings" type="text" /></td>
  </tr>
  <tr>
    <td>Stockholders' Equity</td>
    <td><label name="totalStockholders"></label></td>
  </tr>
  <tr>
    <td style="color: rgb(255,0,0)">Total Liabilites and Equity</td>
    <td><label name="totalFixed"></label></td>
  </tr>
  </table></th>
  </table><br />
  <input name="" type="submit" />


</form:form>
 


</div>
</body>
</html>