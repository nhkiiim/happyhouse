<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js">
</script>
<section id="commercial">
	<div class="container">
		<div class="section-title" data-aos="fade-down">
			<span>Commercial Info</span>
			<h2>Commercial Info</h2>
			  <h6 class="mt-2">동별로 원하는 상권 정보를 검색해보세요~</h6>
		</div>

		<div class="row mb-3">
			<div style="float: none; margin: 0 auto;">
				<form id="commform" action="commercial" method="get">
				<div class="justify-content-center d-flex flex-row mb-3">
					<c:if test="${empty commerval}">
					<input class="form-control mr-2 w-50" type="text" name="dong" value="${interest_info.dong}">
					</c:if>
					<c:if test="${!empty commerval}">
					<input class="form-control mr-2 w-50" type="text" name="dong" value="${commerval}">
					</c:if>
					<input class="btn btn-success btm-sm" type="submit" value="Search"><br>
				</div>
					
					<div>
					<input type="checkbox" name="texts" value="학원"> 학원
					<input class="ml-3" type="checkbox" name="texts" value="도서관"> 도서관
					<input class="ml-3" type="checkbox" name="texts" value="유아"> 유치원
					<input class="ml-3" type="checkbox" name="texts" value="우체국"> 우체국
					<input class="ml-3" type="checkbox" name="texts" value="편의점"> 편의점
					<input class="ml-3" type="checkbox" name="texts" value="수퍼"> 수퍼마켓
					<input class="ml-3" type="checkbox" name="texts" value="패스트푸드"> 패스트푸드
					<input class="ml-3" type="checkbox" name="texts" value="분식"> 분식
					<input class="ml-3" type="checkbox" name="texts" value="카페"> 카페
					<input class="ml-3" type="checkbox" name="texts" value="PC"> PC방
					</div>
				</form>
			</div>
		</div>
		
		<div class="text-center">
		<c:if test="${empty texts}">
			<img src="${root}/img/example_chart.png" style="width:100%; height:100%;">
			<h6 style="color:gray;">[ 상권 정보 검색 예시 ]</h6>
		</c:if>
		</div>
		
		<c:if test="${!empty texts}">
		<div class="row mt-5">
		<div class="col-6">
			<canvas class="col-6" id="barChart" style="width: 80%; max-width: 600px"></canvas>
		</div>
			<script>
			var zValues = new Array();
			<c:forEach  items="${texts}" var="t">
				zValues.push("${t}");
			</c:forEach>
			
			var kValues = new Array();
			<c:forEach var="d" items="${datas}">
			kValues.push(${d});
			</c:forEach>
			var barColorss = [ "#cff09e", "#a8dba8", "#79bd9a","#3b8686","#F2FFDC","#23A966","#66B966","#cff09e","#a8dba8","#79bd9a"];

			new Chart("barChart", {
			  type: "bar",
			  data: {
			    labels: zValues,
			    datasets: [{
			      backgroundColor: barColorss,
			      data: kValues
			    }]
			  },
			  options: {
			    legend: {display: false},
			    title: {
			      display: false,
			    }
			  }
			});
			</script>
			
			<div class="col-6">
		<canvas id="myChart" style="width:100%;max-width:700px"></canvas>
		</div>
			<script>
			var xValues = new Array();
			<c:forEach  items="${texts}" var="t">
				xValues.push("${t}");
			</c:forEach>
			
			var yValues = new Array();
			<c:forEach var="d" items="${datas}">
			yValues.push(${d});
			</c:forEach>
			
			var barColors = [ "#cff09e", "#a8dba8", "#79bd9a","#3b8686","#F2FFDC","#23A966","#66B966","#cff09e","#a8dba8","#79bd9a"];
			
			new Chart("myChart", {
				type : "doughnut",
				data : {
					labels : xValues,
					datasets : [ {
						backgroundColor : barColors,
						data : yValues
					} ]
				},
				options : {
					title : {
						display : false,
						text : "World Wide Wine Production 2018"
					}
				}
			});
		</script>
		</div>
		</c:if>

 	</div>
</section>
