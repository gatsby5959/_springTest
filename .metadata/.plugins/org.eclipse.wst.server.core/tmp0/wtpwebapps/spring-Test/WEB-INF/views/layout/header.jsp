<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<title>Insert title here</title>

</head>
<body>
<h1> My First Spring Project </h1>

<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
<!--         <li class="nav-item dropdown"> -->
<!--           <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> -->
<!--             Dropdown -->
<!--           </a> -->
<!--           <ul class="dropdown-menu"> -->
<!--             <li><a class="dropdown-item" href="#">Action</a></li> -->
<!--             <li><a class="dropdown-item" href="#">Another action</a></li> -->
<!--             <li><hr class="dropdown-divider"></li> -->
<!--             <li><a class="dropdown-item" href="#">Something else here</a></li> -->
<!--           </ul> -->
<!--         </li> -->
        <li class="nav-item">
          <a class="nav-link" href="#">Log IN</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Log OUT</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Sign Up</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/board/register">REG</a> <!-- 컨트롤러board의 register로 가라 -->
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/board/list">Board List</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>