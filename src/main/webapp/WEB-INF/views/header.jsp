<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>

<head>

  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>happy house</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="${root}/img/favicon.png" rel="icon">
  <link href="${root}/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <%-- <link href="${root}/css/common.css"> --%>
  <link href="${root}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${root}/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="${root}/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${root}/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="${root}/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="${root}/vendor/aos/aos.css" rel="stylesheet">

  
  <!-- =======================================================
  * Template Name: Plato - v2.2.1
  * Template URL: https://bootstrapmade.com/plato-responsive-bootstrap-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>


<header id="header" class="d-flex align-items-center">
 
      <div class="container d-flex align-items-center">
        <nav class="nav-menu d-none d-lg-block">
          <ul>
          <li><a href="${root}">HOME</a></li>
          <li><a href="#detail">주택검색</a></li>
		
			<c:if test="${!empty userinfo and empty interest_info}">
			<li><a href="#star">관심지역</a></li>
			</c:if>
			<c:if test="${!empty userinfo and !empty interest_info}">
			<li><a href="#search">관심지역</a></li>
			<li><a href="#commercial">상권정보</a></li>
			<li><a href="#school">학교</a></li>
			</c:if>
			<c:if test="${!empty userinfo}">
			<li><a href="#notice">공지사항</a></li>
			<li><a href="#qna">Q&A</a></li>
			</c:if>
			<li><a href="#introduce">소개</a></li>
			<li><a href="#testimonials">팀</a></li>
          </ul>
         </nav>

        <div class="logo nav-menu ml-auto d-none d-lg-block">
        
        <ul>
          
			<c:if test="${empty userinfo}">
			<li><a href="#" class="loginon" id="loginUser" data-toggle="modal" data-target="#loginModal">로그인</a></li>
			<li><a href="#" class="loginon" id="findUser" data-toggle="modal" data-target="#findModal">비밀번호 찾기</a></li>
			<li><a href="#" class="loginon" id="joinUser" data-toggle="modal" data-target="#joinModal">회원가입</a></li>
			</c:if>
			<c:if test="${!empty userinfo}">
			<li><a href="#" class="loginoff" data-toggle="modal"data-target="#userInfoModal" >${userinfo.name} 님 정보조회</a></li>
			<li><a href="${root}/logout" class="loginoff" id="btn-logout">로그아웃</a></li>
			<li><a href="#" class="loginoff" data-toggle="modal"data-target="#changeModal" >회원수정</a></li>
			<li><a href="#" class="loginoff"  data-toggle="modal"data-target="#out">탈퇴</a></li>
			</c:if>
          </ul>
        </div>
      </div>
    </header>