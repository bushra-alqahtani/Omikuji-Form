<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>omikuji</title>
	<script type="text/javascript" src="/js/app.js"></script>
	<link href="/style.css" rel="stylesheet" >
	
</head>
<body>
	
	<h1>login page </h1><br>
	<p> <c:out  value="${ err }"   /></p>
	
	<form action="/omikuji" method="POST">
	
		<label class="form-label">pick any number from 5-25:</label>
				<select class="mb-3" name="num">
					<c:forEach var="i" begin="5" end="25">					
						<option> <c:out value="${i}"/> </option>
					</c:forEach>
				</select>
				
			<div class="mb-3">
		      <label for="disabledTextInput" class="form-label">enter the name of any city:</label>
		      <input type="text"  class="form-control" name="city">
		    </div>
		    
		     <div class="mb-3">
		      <label  class="form-label">enter the name of any real person:</label>
		      <input type="text"  class="form-control" name="parson">
		    </div>
		    
		     <div class="mb-3">
		      <label  class="form-label">enter the name of any hobby:</label>
		      <input type="text"  class="form-control" name="hobby">
		    </div>
		    
		    <div class="mb-3">
		      <label  class="form-label">enter any type of living thing:</label>
		      <input type="text"  class="form-control" name="living">
		    </div>
		    
		     <div class="mb-3">
		      <label  class="form-label">say something nice to someone:</label>
		       <textarea class="form-control" name="nicething" style="height: 100px"></textarea>
		    </div>
		    
				<p class="mb-3"> send and show a friend..</p>
				<div class="w-100"></div>
				
				
		    <button type="submit" class="btn btn-primary">Submit</button>		
						
	
	
	
	
	
	</form>

 	
 	<script src="/main.js" type="text/javascript" ></script>
</body>
</html>