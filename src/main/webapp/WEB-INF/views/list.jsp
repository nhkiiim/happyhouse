<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section id="detail">
		<div class="container">
		<div class="section-title" data-aos="fade-down">
			<span>search</span>
            <h2>search</h2>
		</div>

		<div class="row mb-3">
			<div class="col-md-6 flex-row" style="float: none; margin: 0 auto;">
				<form id="listform" action="search" method="get"
					class="d-flex flex-row">
					<select class="form-control mr-2 col-2" name="searchField">
						<option value="LIST">전체</option>
						<option value="APTNAME"
							<c:if test="${searchField == 'APTNAME'}">selected</c:if>>아파트명
						</option>
						<option value="PRICE"
							<c:if test="${searchField == 'PRICE'}">selected</c:if>>가격</option>
						<option value="DONG"
							<c:if test="${searchField == 'DONG'}">selected</c:if>
							<c:if test="${!empty interest_info}">selected</c:if>>동</option>
					</select>
					<c:if test="${searchText==null}">
						<input class="form-control mr-2" type="text" name="searchText"
							value="${interest_info.dong}">
					</c:if>
					<c:if test="${searchText!=null}">
						<input class="form-control mr-2" type="text" name="searchText"
							value="${searchText}">
					</c:if>
					<input class="btn btn-success btm-sm col-2" type="submit" value="Search">
				</form>
			</div>
		</div>
	</div>
		
		<c:if test="${empty housedeals and empty housedeal}">
		<div class="container text-center mb-5 mt-3">
		</div>
		</c:if>
		<c:if test="${!empty housedeals and empty housedeal}">
			<div class="container text-center mb-5">
				<form action="search" method="post">
					<div class="w3-padding w3-white notranslate mt-5 mb-5">
				<div class="table-responsive">
					<table class="table">

						<thead>
							<tr>
								<th>No</th>
								<th>동</th>
								<th>아파트 명</th>
								<th>거래금액</th>
								<th>완공년도</th>
								<th>거래년도</th>
								<th>면적</th>
							</tr>
						</thead>
						<tbody>


							<c:forEach var="housedeal" items="${housedeals}" varStatus="vs">
								<tr>
									<td>${housedeal.no}</td>
									<td>${housedeal.dong}</td>
									<td><a href="${root}/view?no=${housedeal.no}">${housedeal.aptName}</a></td>
									<td>${housedeal.dealAmount}</td>
									<td>${housedeal.buildYear}</td>
									<td>${housedeal.dealYear}</td>
									<td>${housedeal.area}</td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
					</div>
					</div>
				</form>
			</div>
		</c:if>
		<c:if test="${!empty housedeal}">
		<%@ include file="detail.jsp" %>
		</c:if>
		
		<!-- 테이블 -->
</section>
