<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">

  <title>Tables</title>
  
  <!-- Latest compiled and minified CSS -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->

<!-- jQuery library -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->

<!-- Popper JS -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script> -->

<!-- Latest compiled JavaScript -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->

<!-- 위 부트스트랩으로 적용이 안돼서 아래로 변경 : w3c에서 적용했던 내용 그대로 가져옴 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
  <script>
  	$(document).ready(function() {
  		$("#modify").submit(function(event) {
			event.preventDefault();
			console.log("modify click");
			
			var bId = $("#bId").val();
			var bName = $("#bName").val();
			var bTitle = $("#bTitle").val();
			var bContent = $("#bContent").val();
			
			var form = {
				bId : bId,
				bName : bName,
				bTitle : bTitle,
				bContent : bContent
			}
			
			$.ajax({
				type : "PUT",
				url : $(this).attr("action"),
				cache : false,
				data : JSON.stringify(form),
				contentType : 'application/json; charset=utf-8',
				success : function(result){
					if(result == "SUCCESS"){
						console.log("result : " + result );
						$(location).attr('href', '/list')
					}
				},
				error : function(e){
					alert("오류가 발생했습니다.");
					console.log(e);
				}
			})
		})
  		
		
	})
  </script>


</head>

<body>

<div class="container">
    <table class="table table-hover"  width="100%" cellspacing="0">
	<form id="modify" action="/list/${contentView.bId }" >
	<input type="hidden" id="bId" value="${contentView.bId }">
		<tr>
			<td>글번호</td>
			<td>${contentView.bId }</td>
		</tr>
		
		<tr>
			<td>조회수</td>
			<td>${contentView.bHit }</td>
		</tr>		
		
		<tr>
			<td>이름</td>
			<td><input type="text" id="bName" value="${contentView.bName }" ></td>
		</tr>
		
		<tr>
			<td>제목</td>
			<td><input type="text" id="bTitle" value="${contentView.bTitle }" ></td>		
		</tr>		
		
		<tr>
			<td>내용</td>
			<td><textarea id="bContent" rows="50" cols="30">${contentView.bContent }</textarea></td>		
		</tr>	
		
		<tr>
			<td colspan="2">
				<input type="submit" value="수정">
				<a href="/list">목록 보기</a>				<!-- /list 이렇게 경로를 지정해야 제대로 작동함 -->
				<a href="${pageContext.request.contextPath }/restful/board/reply_view/${contentView.bId}">답변</a>
			</td>		
		</tr>	

	</table>  	
          
</body>
</html>               