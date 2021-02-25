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

  <style>
  	.pagination{					/* pagination 가운데 정렬하기 */
  		display:block;
  		text-align:center;
  	}
  	
  	.pagination > li > a {			/* > : 자식 선택자 */
  		float:none;
  	}
  </style> 

</head>

<body>

<div class="container">
                <table class="table table-hover"  width="100%" cellspacing="0">

<%-- 					<tr>
						<td>사원 번호</td>
						<td>사원 이름</td>
						<td>직급(업무)</td>
						<td>상사(이름)</td>
						<td>입사일</td>
						<td>급여</td>
						<td>커미션</td>
						<td>부서 번호</td>
						<td>부서 이름</td>
						<td>부서 위치</td>
						<td>관리</td>
					</tr>
					
					<c:forEach items="${list }" var="empList">
					<tr>
						<td>${empList.empNo }</td>
						<td>${empList.eName }</td>
						<td>${empList.job }</td>
						<td>${empList.mgr }</td>
						<td>${empList.hiredate }</td>
						<td>${empList.sal }</td>
						<td>${empList.comm }</td> 
						<c:forEach items="${deptList}" var="deptList" > 
						<td> ${empList.deptNo } </td>
						<td> ${empList.dName }</td>
						<td> ${empList.loc } </td>
						</c:forEach>
						<td><a href="modify">수정</a></td>
					</tr>
					</c:forEach>
					
					<tr>
						<td colspan="11"><button name="button" onclick="location.href='view_addList'">사원 정보 추가</button></td>
					</tr>
   
                </table> --%>
                
                

		<tr>
			<td>글번호</td>
			<td>이름</td>
			<td>제목</td>
			<td>날짜</td>
			<td>조회수</td>
			<td>삭제</td>						
		</tr>
		
		<!-- items는 달러로 가져오자....! -->
		<c:forEach items="${list }" var="list">
		<tr>
			<td>${list.bId }</td>
			<td>${list.bName }</td>
			
			<td>
				<c:forEach begin="1" end="${list.bIndent }">[re:]</c:forEach>
				<a href="/list/${list.bId}">${list.bTitle }</a>			
			</td>
			
			<td>${list.bDate }</td>
			<td>${list.bHit }</td>
			<td><a class="delete" href="${pageContext.request.contextPath }/list/${list.bId}">삭제</a></td>						
		</tr>	
		</c:forEach>
		
		<tr>
			<!-- 링크 미완성 -->
			<td colspan="6"><a href="${pageContext.request.contextPath }/restful/board/">글 작성</a></td>
		</tr>	
	</table>
</div>    
	<div id="container">
	<ul class="pagination">
		<li>
	       <c:if test="${pageMaker.prev}">
		      <a href="list${pageMaker.makeQuery(pageMaker.startPage - 1) }">prev</a>
		   </c:if>
	     </li>     
	     
	     <li>	
		   <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
			  <a href="list${pageMaker.makeQuery(idx)}">${idx}</a>
		   </c:forEach>          	
	      </li>   
	      
	      <li> 	
	       <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
			  <a href="list${pageMaker.makeQuery(pageMaker.endPage +1) }"> next </a>
		   </c:if>    
		  </li>      	
     </ul> 
     </div>    	
          
</body>
</html>               