<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form>
			<input type="checkbox" name="fruits" value="100"> 사과 <br>
			<input type="checkbox" name="fruits" value="150"> 바나나 <br>
			<input type="checkbox" name="fruits" value="200"> 딸기 <br>
			<input type="checkbox" name="fruits" value="300"> 키위 <br>
			<input type="checkbox" name="fruits" value="500"> 망고 <br>
			<input type="checkbox" name="fruits" value="700"> 수박 <br>

			<input type="submit" value="합게">


		</form>

	</div>

	<hr>
	<div class="container">
	    
		<!-- 이 위치에 출력되도록 -->
		<% 
		String[] fruits = request.getParameterValues("fruits");
		int sum = 0;
		if(fruits != null && fruits.length > 0){
			for(String value : fruits) {
				sum += Integer.valueOf(value);
			}
		}
		%>
		<%= sum %>
		
	</div>
</body>
</html>