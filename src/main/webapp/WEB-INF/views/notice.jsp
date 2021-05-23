<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<section id="notice" class="notice">
	<div class="container">

		<div class="section-title" data-aos="fade-down">
			<span>공지사항</span>
			<h2>공지사항</h2>
			<div class="mt-4 mb-3">
		  	<%-- <button type="button" onclick="location.href='${root}/noriceregist'" class="btn btn-success">등록</button> --%>
		  	<button href="#" class="loginon" id="insertNotice" data-toggle="modal" data-target="#insertnoticeModal">공지 등록</button>
        </div>
			<!-- <p>공지사항입니다.</p> -->
		</div>


		<c:if test="${empty notices}">
			<p>등록된 공지사항이 없습니다.</p>
		</c:if>
		
		<c:if test="${!empty notices}">
			<div class="notice-list">
				<ul>
				<% int delay = 0; int nhref=1; String href = "notice-list-"; %>
				<c:forEach var="notice" items="${notices}" varStatus="vs">
				
					<c:if test="${notice.notice_no eq 1}">
						<li data-aos="fade-up"><i class="bx bx-help-circle icon-help"></i>
						<a data-toggle="collapse" class="collapse" href="#notice-list-1">
						${notice.title }
						<i class="bx bx-chevron-down icon-show"></i>
						<i class="bx bx-chevron-up icon-close"></i>
					</a>
						<div id="notice-list-1" class="collapse show"
							data-parent=".notice-list">
							<p>${notice.content }</p>
						</div></li>
					</c:if>
					<c:if test="${notice.notice_no ne 1}">
					<% delay += 100; nhref += 1; String h = "#" + href + nhref;%>
						<li data-aos="fade-up" data-aos-delay="<%=delay%>"><i class="bx bx-help-circle icon-help"></i> 
						<a data-toggle="collapse" href="<%=h%>" class="collapsed">
					${notice.title }
					<i class="bx bx-chevron-down icon-show"></i>
					<i class="bx bx-chevron-up icon-close"></i>
					</a>
					<% h = href + nhref; %>
						<div id="<%=h%>" class="collapse"
							data-parent=".notice-list">
							<p>${notice.content }</p>
						</div></li>
					</c:if>
						
				</c:forEach>

				</ul>
			</div>

		</c:if>

	</div>
</section>
<!-- End F.A.Q Section -->