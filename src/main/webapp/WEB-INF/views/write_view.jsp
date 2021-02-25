<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body>
	<form action="write">
	<div class="container">
    <table class="table table-hover"  width="100%" cellspacing="0">
		
		<tr>
			<td>이름</td>
			<td><input type="text" name="bName"></td>
		</tr>
		
		<tr>
			<td>제목</td>
			<td><input type="text" name="bTitle" ></td>
		</tr>
		
		<tr>
			<td>내용</td>
			<td><textarea name="bContent" cols="30" rows="50"></textarea></td>
		</tr>

		<tr>
			<td colspan="2">
				<input type="submit" value="작성 완료">
				<a href="/list">목록 보기</a>
			</td>
		</tr>
			
		
	</table>
	</div>
	</form>
</body>
</html>