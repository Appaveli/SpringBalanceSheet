<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
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
	margin-top: 50px;
	margin-right: auto;
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
  Income Statement for Appeveli<br />
  As of Feburary 28, 2015
</div>


<div id="assets"> 

 <table width="502" height="422" >
 
<th>Revenue</th><br /><br />
 <c:forEach items ="${incomestatementList}" var ="i">
<tr><td>Sales</td><td><c:out value="${i.sales}"/></td></tr>
  
  <tr> <td>Income</td><td><c:out value="${i.income}"/></td></tr>
  <tr>
    <td style="color: rgb(255,0,0)">Total Revenues</td><td><c:out value="${i.totalSales}"/></td>
  </tr>
  
    <th>Expenses</th>
   
  <tr><td>Cost of Goods Sold</td><td><c:out value="${i.CostGoods}"/></td></tr>
  
  <tr><td>Rent Expenses</td><td><c:out value="${i.rentExpenses}"/></td></tr>
  <tr>
    <td>Wage Expenses</td>
    <td><c:out value="${i.wageExpenses}"/></td>
  </tr>
  <tr>
    <td style="color: rgb(255,0,0)">Total Expenses</td>
    <td><c:out value="${i.totalExpenses}"/></td>
  </tr>
  <tr>
    <td style="color: rgb(255,0,0)">Net Income</td>
    <td><c:out value="${i.netIncome}"/></td>
  </tr>
    
   </c:forEach>
  </table>

</div>

</body>
</html>