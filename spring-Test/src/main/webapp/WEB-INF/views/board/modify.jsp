<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<jsp:include page="../layout/header.jsp"></jsp:include>

  <form action = "/board/modify" method="post" >
  <input type="hidden" name="bno" value="${bvo.bno}">
	<table>
		<tr>
		
			<th>BNO</th>
			<td>${bvo.bno}</td>
		</tr>
		<tr>
			<th>TITLE</th>
			<td><input type="text" name="title" value="${bvo.title}"></td>
		</tr>
		<tr>
			<th>WRITER</th>
			<td>${bvo.writer}</td>
		</tr>
		<tr>
			<th>CONTENT</th>
			<td><textarea row="4" cols="33" name="content">${bvo.content}</textarea></td>
		</tr>
	</table>
	<button type = submit>수정</button>
</form>

<a href="/board/remove?bno=${bvo.bno}"><button>삭제</button></a> <br>

<a href="/board/list/"><button>리스트</button></a>

<jsp:include page="../layout/footer.jsp"></jsp:include>

</body>
</html>