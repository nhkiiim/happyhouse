<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<c:set var="interok" value="${interest_info}"/>

<!DOCTYPE html>
<html lang="en">
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

  <!-- Template Main CSS File -->
  <link href="${root}/css/style.css" rel="stylesheet">
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <!-- =======================================================
  * Template Name: Plato - v2.2.1
  * Template URL: https://bootstrapmade.com/plato-responsive-bootstrap-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
	<body>
  <div class="wrap">
    <!-- ======= Hero Section ======= -->
    <section id="hero">
      <div class="hero-container" data-aos="fade-up">
        <h1>Happy House</h1>
        <h2>Welcome to Happy House</h2>
        <a href="#detail" class="btn-get-started scrollto">Find your happy house!</a>
      </div>
    </section><!-- End Hero -->

    <!-- ======= Header ======= -->
    <%@ include file="header.jsp" %>

    <main id="main">
   			 <!-- ======= 주택검색 Section ======= -->
		   <%@include file="list.jsp" %>

		   <c:if test="${!empty interest_info}">
		    <!-- ====== 관심지역 Section ======= -->
		   <%@include file="map.jsp" %>
		   </c:if>
			
		   <c:if test="${empty interest_info and !empty userinfo}">
			<!-- ====== 관심지역 등록 Section ======= -->
			<%@ include file="interest.jsp" %>
		   </c:if>
		
			<!-- ======= 공지사항 Section ======= -->
			<%@ include file="notice.jsp" %>
		
		<!-- ======= QnA Section ======= -->
			<%@ include file="qna.jsp" %>
			
			
		
    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
    <%@ include file="footer.jsp" %>

  </div>
  
  <script>
		let msg="${msg}";
		if(msg)alert(msg);
	</script>
  <!-- Modal Join -->
	<%@ include file="/WEB-INF/views/members/join.jsp" %>
	
	<!-- Modal Login -->
	<%@ include file="/WEB-INF/views/members/login.jsp" %>
	
	
	<!-- Modal userInfo -->
	<%@ include file="/WEB-INF/views/members/userinfo.jsp" %>
	
	<!-- Modal 수정 -->
	<%@ include file="/WEB-INF/views/members/modify.jsp" %>
	
	
	<!-- Modal out -->
	<%@ include file="/WEB-INF/views/members/delete.jsp" %>
	
	<!-- Modal findpass -->
	<%@ include file="/WEB-INF/views/members/findpass.jsp" %>
	
	
  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="vendor/php-email-form/validate.js"></script>
  <script src="vendor/jquery-sticky/jquery.sticky.js"></script>
  <script src="vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="vendor/venobox/venobox.min.js"></script>
  <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="js/main.js"></script>

</body>

</html>