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
<table class="table table-hover">
    <thead>
        <!-- 
        <tr>
            <th>#</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성일</th>
            <th>내용</th>
            <th>조회수</th>
        </tr>
        -->
    </thead>
    <tbody>
        <tr>
            <td>글번호</td>
            <td>${bvo.bno}</td>
        </tr>
        <tr>
            <td>제목</td>
            <td>${bvo.title}</td>
        </tr>
        <tr>
            <td>작성자</td>
            <td>${bvo.writer}</td>
        </tr>
        <tr>
            <td>등록일</td>
            <td>${bvo.registerDate}</td>
        </tr>
        <tr>
            <td>내용</td>
            <td>${bvo.content}</td>
        </tr>
        <tr>
            <td>조회수</td>
            <td>${bvo.read_count}</td>
        </tr>
    </tbody>
</table>
<a href="/board/modify?bno=${bvo.bno}"><button>수정</button></a> <br>

<a href="/board/remove?bno=${bvo.bno}"><button>삭제</button></a> <br>

<a href="/board/list/"><button>리스트</button></a>

<jsp:include page="../layout/footer.jsp"></jsp:include>

</body>
</html>