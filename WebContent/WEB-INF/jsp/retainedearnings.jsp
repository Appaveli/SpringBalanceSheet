<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
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
  Retained Earnings for Appeveli<br />
  As of Feburary 28, 2015
</div>


<div id="liabilites">
  <table width="502" height="422" >
  <th><table width="502" height="422" >
    <th>&nbsp;</th>
    <br />
    <br />
  <tr>
    <td>Retained Earnings at December 31, 2013</td>
    <td><input name="retained" type="text" /></td>
  </tr>
  <br />
  <tr>
    <td>Net Income for the year ended December 31, 2014</td>
    <td><input name="netYear" type="text" /></td>
  </tr>
  <tr>
    <td style="color: rgb(255,0,0)">Total </td>
    <td><label name="totalAssets">Total</label></td>
  </tr>
  <br />
  <br />
      <th>&nbsp;</th>
    <br />
    <br />
  <tr>
    <td>Dividend paid on preferred stock</td>
    <td><input name="prefrredStock" type="text" /></td>
  </tr>
  <br />
  <tr>
    <td>Rent Expenses Dividend paid on common stock</td>
    <td><input name="rentExpenses" type="text" /></td>
  </tr>
  <tr>
    <td style="color: rgb(255,0,0)">Total dividend deducted</td>
    <td>Total</td>
  </tr>
  <tr>
    <td style="color: rgb(255,0,0)">Ending balance retained earnings </td>
    <td><label name="totalFixed">Total</label></td>
  </tr>
  </table></th>
  </table><br />
  <input name="" type="submit" />



</div>
</body>
</html>