<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
           <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
#header {
	margin: auto;
	height: 80px;
	width: 400px;
	border-top-style: double;
	border-right-style: none;
	border-bottom-style: double;
	border-left-style: none;
	border-top-color: rgb(255,0,0);
	border-right-color: rgb(255,0,0);
	border-bottom-color: rgb(255,0,0);
	border-left-color: rgb(255,0,0);
}
#header h2 {
	text-align: center;
}
#man {
	height: 200px;
	width: 400px;
	margin-top: 40px;
	margin-right: auto;
	margin-bottom: auto;
	margin-left: auto;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
	border-top-color: rgb(255,0,0);
	border-right-color: rgb(255,0,0);
	border-bottom-color: rgb(255,0,0);
	border-left-color: rgb(255,0,0);
}
.y {
	text-align: center;
}
</style>
</head>
<body>
<div id="header">
  <h2>Search Balance Sheet</h2>
</div>
<div id="man"><form:form  method = "post" >
 
 <span class="y">
 <form:label path="id">Balance Sheet ID Number</form:label>
 <form:input path="id"></form:input>
 </span>
 <input type ="submit"></input>

</form:form><br></div>


</body>
</html>