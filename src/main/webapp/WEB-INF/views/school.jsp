<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section id="school">
		<div class="container">
		<div class="section-title" data-aos="fade-down">
			<span>school</span>
            <h2>school</h2>
		</div>

		<div class="row mb-3">
			<div class="col-md-6 flex-row" style="float: none; margin: 0 auto;">
				<form id="listform" action="school" method="get"
					class="d-flex flex-row">
					<select class="form-control mr-2 col-2" name="schoolField">
						<option value="LIST">전체</option>
						<option value="ELEMENTARY"
							<c:if test="${schoolField == 'ELEMENTARY'}">selected</c:if>>초등학교
						</option>
						<option value="MIDDLE"
							<c:if test="${schoolField == 'MIDDLE'}">selected</c:if>>중학교</option>
						<opt
						ion value="HIGH"
							<c:if test="${schoolField == 'HIGH'}">selected</c:if>>고등학교</option>
						<option value="SPECIAL"
							<c:if test="${schoolField == 'SPECIAL'}">selected</c:if>>특수학교</option>
						<option value="OTHER"
							<c:if test="${schoolField == 'OTHER'}">selected</c:if>>그외학교</option>
						<%-- <option value="DONG"
							<c:if test="${schoolField == 'DONG'}">selected</c:if>
							<c:if test="${!empty school_info}">selected</c:if>>동</option> --%>
					</select>
					<input class="form-control mr-2" type="text" name="schoolText"
							value="${schoolText}">
					<%-- <c:if test="${schoolText==null}">
						<input class="form-control mr-2" type="text" name="schoolText"
							value="${interest_info.dong}">
					</c:if>
					<c:if test="${schoolText!=null}">
						<input class="form-control mr-2" type="text" name="schoolText"
							value="${schoolText}">
					</c:if> --%>
					<input class="btn btn-dark btm-sm col-2" type="submit" value="Search">
				</form>
			</div>
		</div>
	</div>
		
		<c:if test="${empty schools and empty school}">
		<div class="container text-center mb-5 mt-3"> 학교가 없습니다.
		</div>
		</c:if>
		<c:if test="${!empty schools and empty school}">
			<div class="container text-center mb-5">
				<form action="school" method="post">
					<div class="w3-padding w3-white notranslate mt-5 mb-5">
				<div class="table-responsive">
					<table class="table">

						<thead>
							<tr>
								<th>이름</th>
								<th>설립</th>
								<th>주소지</th>
								<th>공학</th>
								<th>url</th>
							</tr>
						</thead>
						<tbody>


							<c:forEach var="school" items="${schools}" varStatus="vs">
								<tr>
									<td>${school.name}</td>
									<td>${school.establishment}</td>
									<%-- <td><a href="${root}/view?no=${school.no}">${school.aptName}</a></td> --%>
									<td>${school.address1} ${school.dong} ${school.address2}</td>
									<td>${school.coed}</td>
									<td><form id="listform" action="gotoschool" method="get" name="schoolurl" value="${school.url}">${school.url}</form></td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
					</div>
					</div>
				</form>
			</div>
		</c:if>
		<c:if test="${!empty school}">
		<%-- <%@ include file="detail.jsp" %> --%>
		</c:if>
		
		<!-- 테이블 -->
</section>
