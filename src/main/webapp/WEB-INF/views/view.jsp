<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<section id="detail">
		<br><br><br><br>
		<div class="container" align="center">
		<div class="section-title" data-aos="fade-down">
            <h2>아파트 조회 정보</h2>
		</div>

			<div class="container text-center mb-5">
				<form action="search" method="post">
					<div class="w3-padding w3-white notranslate mt-5 mb-5">
				<div class="table-responsive">
					<c:if test="${!empty housedeal}">
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>동</th>
					<th>아파트 명</th>
					<th>아파트 코드</th>
					<th>거래금액</th>
					<th>완공년도</th>
					<th>거래년도</th>
					<th>거래월</th>
					<th>거래일</th>
					<th>면적</th>
					<th>층</th>
					<th>지번</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${housedeal.no}</td>
					<td>${housedeal.dong}</td>
					<td>${housedeal.aptName}</td>
					<td>${housedeal.code}</td>
					<td>${housedeal.dealAmount}</td>
					<td>${housedeal.buildYear}</td>
					<td>${housedeal.dealYear}</td>
					<td>${housedeal.dealMonth}</td>
					<td>${housedeal.dealDay}</td>
					<td>${housedeal.area}</td>
					<td>${housedeal.floor}</td>
					<td>${housedeal.jibun}</td>
				</tr>
			</tbody>
		</table>
	</c:if>
	<c:if test="${empty housedeal}">
		<p>조회된 아파트가 없습니다.</p>
	</c:if>
					</div>
					</div>
				</form>
			</div>
		<!-- 테이블 -->
		</div>
</section>