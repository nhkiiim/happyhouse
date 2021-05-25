<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://www.gstatic.com/charts/loader.js">
</script>
<section id="school">
	<div class="container">
		<div class="section-title" data-aos="fade-down">
			<span>school</span>
			<h2>school</h2>
			 <h6 class="mt-2">동별로 학교 정보를 검색해보세요~</h6>
		</div>

			<div class="w-75" style="float: none; margin: 0 auto;">
					<form id="schoolform" action="school" method="get">
						<div class=" justify-content-center d-flex flex-row">
							<c:if test="${empty schooldong}">
								<input class="form-control mr-2 w-50" type="text" name="dong"
									value="${interest_info.dong}">
							</c:if>
							<c:if test="${!empty schooldong}">
								<input class="form-control mr-2 w-50" type="text" name="dong"
									value="${schooldong}">
							</c:if>
							<input class="btn btn-success btm-sm" type="submit"
								value="Search"><br>
						</div>
					</form>
			</div>
			
		<div>
				<c:if test="${empty schools}">
				<div class="text-center mt-5 mb-5">
					<img src="${root}/img/school_ex.png">
				</div>
				</c:if>
			
			<c:if test="${!empty schools}">
			<div class="justify-content-center">
				<div id="myChart" style="width: 1100px; height: 300px"></div>
				<script>
					var data = new Array();
					<c:forEach  items="${datas}" var="d">
					data.push(${d});
					</c:forEach>
					
					var a=data[0];
					var b=data[1];
					var c=data[2];
					var d=data[3];
					
					google.charts.load('current', {
						'packages' : [ 'corechart' ]
					});
					google.charts.setOnLoadCallback(drawChart);

					function drawChart() {
						var data = google.visualization.arrayToDataTable([
								[ 'Opening Move', 'Percentage',{ role: 'style' }], [ '초등학교', a ,'#cff09e'],
								[ '중학교', b ,'#a8dba8'], [ '고등학교',c, '#79bd9a' ],
								[ '특수학교', d ,'#3b8686'] ]);

						var options = {
							//title : 'World Wide Wine Production',
							legend: { position: "none" }
							
						};

						var chart = new google.visualization.BarChart(document
								.getElementById('myChart'));
						chart.draw(data, options);
					}
				</script>
			</div>

			<div class="mt-4">
				<div class="text-center mb-5">
					<div class="text-center mb-5">
						<table class="table">
							<tr>
								<td><strong>이름</strong></td>
								<td><strong>주소지</strong></td>
								<td><strong>공학</strong></td>
								<td><strong>url</strong></td>
							</tr>
							<c:forEach var="school" items="${schools}">
								<tr>
									<td>${school.name}</td>
									<td>${school.address1} ${school.address2}</td>
									<td>${school.coed}</td>
									<td><a href="${school.url}" target="blank" style="color: #4eb478;">${school.url}</a></td>
								</tr>
							</c:forEach>
						</table>
					</div>
			</div>
		</div>	
		</c:if>
	</div>
</section>
