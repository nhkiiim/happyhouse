<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<header id="header" class="d-flex align-items-center">
 
      <div class="container d-flex align-items-center">
        <div class="logo mr-auto nav-menu d-none d-lg-block">
          <ul>
          <li><a href="#detail">주택검색</a></li>
			<li><a href="#info">공지사항</a></li>
			<li><a href="#qna">Q&A</a></li>
			<c:if test="${!empty userinfo and empty interest_info}">
			<li><a href="#star">관심지역</a></li>
			</c:if>
			<c:if test="${!empty userinfo and !empty interest_info}">
			<li><a href="#search">관심지역</a></li>
			</c:if>
			<li><a href="#footer">소개</a></li>
          </ul>
         </div>

        <nav class="nav-menu d-none d-lg-block">
        
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
        </nav>
      </div>
    </header>