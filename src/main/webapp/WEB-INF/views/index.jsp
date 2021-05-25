<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<c:set var="interok" value="${interest_info}" />

<!DOCTYPE html>
<html lang="en">
<!-- Template Main CSS File -->
<link href="${root}/css/style.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<body>
	<div class="wrap">
		<!-- ======= Hero Section ======= -->
		<section id="hero">
			<div class="hero-container" data-aos="fade-up">
				<h1>Happy House</h1>
				<h2>Welcome to Happy House</h2>
				<a href="#detail" class="btn-get-started scrollto">Find your
					happy house!</a>
			</div>
		</section>
		<!-- End Hero -->

		<!-- ======= Header ======= -->
		<%@ include file="header.jsp"%>

		<main id="main">
		
			<!-- ======= 주택검색 Section ======= -->
			<%@include file="list.jsp"%>
			
			<!-- ====== 관심지역 Section ======= -->
			<c:if test="${!empty interest_info}">
				<%@include file="map.jsp"%>
			</c:if>

			<!-- ====== 관심지역 등록 Section ======= -->
			<c:if test="${empty interest_info and !empty userinfo}">
				<%@ include file="interest.jsp"%>
			</c:if>

			<c:if test="${!empty userinfo}">
				<!-- ======= 상권정보 Section ======= -->
				<%@ include file="commercial.jsp"%>
				<!-- ======= 학교 Section ======= -->
				<%@ include file="school.jsp"%>
				<!-- ======= 공지사항 Section ======= -->
				<%@ include file="notice.jsp"%>
				<!-- ======= QnA Section ======= -->
				<%@ include file="qna.jsp"%>
			</c:if>


			<%@ include file="introduce.jsp"%>
			<%@ include file="team.jsp"%>


		</main>
		<!-- End #main -->

		<!-- ======= Footer ======= -->
		<%@ include file="footer.jsp"%>

	</div>

	<script>
		let msg = "${msg}";
		if (msg)
			alert(msg);
	</script>
	<!-- Modal Join -->
	<%@ include file="/WEB-INF/views/members/join.jsp"%>

	<!-- Modal Login -->
	<%@ include file="/WEB-INF/views/members/login.jsp"%>


	<!-- Modal userInfo -->
	<%@ include file="/WEB-INF/views/members/userinfo.jsp"%>

	<!-- Modal 수정 -->
	<%@ include file="/WEB-INF/views/members/modify.jsp"%>


	<!-- Modal out -->
	<%@ include file="/WEB-INF/views/members/delete.jsp"%>

	<!-- Modal findpass -->
	<%@ include file="/WEB-INF/views/members/findpass.jsp"%>
	
	<!-- Modal sendsubscribe -->
	<%@ include file="/WEB-INF/views/members/sendmail.jsp"%>

	<!-- Modal Notice -->
	<%@ include file="/WEB-INF/views/insertnotice.jsp"%>

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