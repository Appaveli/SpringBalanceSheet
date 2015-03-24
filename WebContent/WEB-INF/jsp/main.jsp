<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Home</title>
<style type="text/css">
#header {
	height: 90px;
	width: 450px;
	margin: auto;
	background-color: rgb(255,255,255);
	border-top-style: double;
	border-right-style: none;
	border-bottom-style: double;
	border-left-style: none;
	border-top-color: rgb(255,0,0);
	border-right-color: rgb(255,0,0);
	border-bottom-color: rgb(255,0,0);
	border-left-color: rgb(255,0,0);
	text-align: center;
	font-size: 36px;
	font-family: "Segoe WP Black";
}
body,td,th {
	color: rgb(0,0,0);
	margin: auto;
	height: 900px;
	width: 450px;
}
#links {
	font-weight: bold;
}
#links {
	font-size: 24px;
}
#links #links {
	text-align: center;
}
a {
	font-size: 36px;
	color: rgb(0,0,0);
	font-family: Arial, Helvetica, sans-serif;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: rgb(255,0,0);
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
</style>
</head>

<body>

<div id="header">Appeveli's Accounting Life Cycle</div><br />
<div id="main"><a href="/AccountingLifeCycle/balancesheet" >Balance Sheet</a><br/>
<a href="/AccountingLifeCycle/searchbalancesheet">Search Balance Sheet</a><br/>

 </div>
</body>
</html>