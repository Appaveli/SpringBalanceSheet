<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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

 <table width="502" height="422" >
<c:forEach items ="${balancesheet}" var ="balance">
<th>ASSETS</th><br /><br />
<tr><td>Cash  </td><td><c:out value="${balance.cash}"/></td></tr><br />
<tr><td>Accounts Receivable</td> <td><c:out value="${balance.accountsReceivable}"/></td></tr>
<tr><td>Prepaid Expense</td> <td><c:out value="${balance.prepaidExpenses}"/></td></tr>
<tr><td>Inventory</td> <td><c:out value="${balance.inventory}"/></td></tr>
<tr><td style="color: rgb(255,0,0)">Total Current Assets</td> <td><c:out value="${balance.totalCurrentAssets}"/></td></tr><br /><br />

<th>Fixed Assets</th><br /><br />
<tr><td>Property,Plant and Equipment </td><td><c:out value="${balance.property}"/></td></tr><br />
<tr><td>Accumulated Depreciation</td> <td><c:out value="${balance.accumDepre}"/></td></tr>
<tr><td>Net Fixed Assets</td> <td><c:out value="${balance.netFixedAssets}"/></td></tr>


<tr><td style="color: rgb(255,0,0)">Total Assets</td> <td><c:out value="${balance.totalAssets}"/></td></tr>
</c:forEach>
</table>
</div>

<div id="liabilites">
  <table width="502" height="422" >
  <c:forEach items ="${balancesheet}" var ="balance">
  <th><table width="502" height="422" >
  <th>Liabilites</th>
    <br />
    <br />
  <tr>
    <td>Accounts Payable </td>
    <td><c:out value="${balance.accountsPayable}"/></td>
  </tr>
  <br />
  <tr>
    <td>Accured Expenses</td>
    <td><c:out value="${balance.accuredExpenses}"/></td>
  </tr>
  <tr>
    <td>Current Portion of Debt</td>
    <td><c:out value="${balance.portionDebt}"/></td>
  </tr>
  <tr>
    <td>Tax Payable</td>
    <td><c:out value="${balance.taxPayable}"/></td>
  </tr>
  <tr>
    <td style="color: rgb(255,0,0)">Current Liablities</td>
    <td><c:out value="${balance.currentLiabilities}"/></td>
  </tr>
  <br />
  <br />
  <th>Long-Term Liabilities</th>
    <br />
    <br />
  <tr>
    <td>Capital Stock</td>
    <td><c:out value="${balance.capitalStock}"/></td>
  </tr>
  <br />
  <tr>
    <td>Retained Earnings</td>
    <td><c:out value="${balance.retainedEarnings}"/></td>
  </tr>
  <tr>
    <td>Stockholders' Equity</td>
    <td><c:out value="${balance.stockholdersEquity}"/></td>
  </tr>
  <tr>
    <td style="color: rgb(255,0,0)">Total Liabilites and Equity</td>
    <td><c:out value="${balance.totalLiabilities}"/></td>
  </tr>
 
  </table></th>
  </c:forEach>
  </table><br />
  

 


</div>
</body>
</html>