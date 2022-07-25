<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>hello world</title>
	<script type="text/javascript" src="/js/app.js"></script>
	<link href="/style.css" rel="stylesheet" >
	
</head>
<body>


	
	<h1> Here is Your Omikuji..</h1>
		<div class="box p-5">
			<h2 class="fs-6"><c:out value="${message}"/> </h2>
		</div>
		<a href="/">Go back</a>
	
	



 	<script src="/main.js" type="text/javascript" ></script>
</body>
</html>

	
	
