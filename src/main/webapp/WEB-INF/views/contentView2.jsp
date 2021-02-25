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

	<form action="/list/modify">
	<input type="hidden" name="bId" value="${contentView.bId }">
	<div class="container">
    <table class="table table-hover"  width="100%" cellspacing="0">
		<tr>
			<dl>
				<td><h4><dt><mark>글번호</mark></dt></h4></td>
				<td>${contentView.bId }</td>
			</dl>
		</tr>
		
		<tr>
			<dl>
				<td><h4><dt><mark>조회수</mark></dt></h4></td>
				<td>${contentView.bHit }</td>
			</dl>
		</tr>
		
		<tr>
			<dl>
				<td><h4><dt><mark>이름</mark></dt></h4></td>
				<td><input type="text" name="bName" value="${contentView.bName }"></td>
			</dl>
		</tr>
		
		<tr>
			<dl>
				<td><h4><dt><mark>제목</mark></dt></h4></td>
				<td><input type="text" name="bTitle" value="${contentView.bTitle }"></td>
			</dl>
		</tr>
		
		<tr>
			<dl>
				<td><h4><dt><mark>내용</mark></dt></h4></td>
				<td><textarea name="bContent" cols="80" rows="30">${contentView.bContent }</textarea></td>
			</dl>
		</tr>

		<tr>
			<td colspan="2">
				<input type="submit" value="수정">
			<div class="btn-group">
				<button type="button" class="btn btn-warning"><a href="/list"><p class="text-danger">목록 보기</p></a></button>
				<button type="button" class="btn btn-warning"><a href="/list/delete?bId=${contentView.bId }"><p class="text-danger">삭제</p></a></button>
				<button type="button" class="btn btn-warning"><a href="/list/replyView?bId=${contentView.bId }"><p class="text-danger">답변</p></a></button>
			</div>
			</td>
		</tr>
			
		
	</table>  	
  </div>   
	</form>
</body>
</html>