<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ======= Features Section ======= -->
      <section id="features" class="features">
        <div class="container">

          <div class="row">
         <div class="col-lg-1"></div>

            <div class="col-lg-5 d-flex align-items-stretch">
              <div class="card" data-aos="fade-up">
             <%--    <img src="${root}/img/building.jpg" class="card-img-top" alt="..."> --%>
             <div id="roadview" style="width:420px;height:300px;"></div>
					<script type="text/javascript"
						src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bf61f9b0f02f84fdef6bffe53c80eb3e"></script>
					<script>
						var lat=${road.lat};
						var lng=${road.lng};
						
						var roadviewContainer = document
								.getElementById('roadview'); //로드뷰를 표시할 div
						var roadview = new kakao.maps.Roadview(
								roadviewContainer); //로드뷰 객체
						var roadviewClient = new kakao.maps.RoadviewClient(); //좌표로부터 로드뷰 파노ID를 가져올 로드뷰 helper객체

						var position = new kakao.maps.LatLng(lat,lng);

						// 특정 위치의 좌표와 가까운 로드뷰의 panoId를 추출하여 로드뷰를 띄운다.
						roadviewClient.getNearestPanoId(position, 50, function(
								panoId) {
							roadview.setPanoId(panoId, position); //panoId와 중심좌표를 통해 로드뷰 실행
						});
					</script>
					<div class="card-body">
                  <h5 class="card-title">${housedeal.aptName}</h5>
                  <p class="card-text">
                  </p>
                </div>
              </div>
            </div>
            
            <div class="col-lg-5">
            	<%-- <h3 class= "mb-4">아파트 상세 정보</h3>
            	<ul class="list-group">
					<li class="list-group-item"><strong>위치 : </strong>&nbsp;&nbsp;&nbsp;${housedeal.dong}</li>
					<li class="list-group-item"><strong>거래금액 : </strong>&nbsp;&nbsp;&nbsp;${housedeal.dealAmount}</li>
					<li class="list-group-item"><strong>완공년도 : </strong>&nbsp;&nbsp;&nbsp;${housedeal.buildYear}</li>
					<li class="list-group-item"><strong>거래일자 : </strong>&nbsp;&nbsp;&nbsp;${housedeal.dealYear}년 ${housedeal.dealMonth}월 ${housedeal.dealDay}</li>
					<li class="list-group-item"><strong>면적 : </strong>&nbsp;&nbsp;&nbsp;${housedeal.area}</li>
					<li class="list-group-item"><strong>층 : </strong>&nbsp;&nbsp;&nbsp;${housedeal.floor}</li>
				</ul> --%>
				<h3 class= "mb-4">${housedeal.aptName} 상세 정보</h3>
            	<table class="table">
					<tr><td><strong>위치</strong></td><td>${housedeal.dong}</td></tr>
					<tr><td><strong>거래금액</strong></td><td>${housedeal.dealAmount}</td></tr>
					<tr><td><strong>완공년도</strong></td><td>${housedeal.buildYear}</td></tr>
					<tr><td><strong>거래일자</strong></td><td>${housedeal.dealYear}년 ${housedeal.dealMonth}월 ${housedeal.dealDay}일</td></tr>
					<tr><td><strong>면적</strong></td><td>${housedeal.area} ㎡</td></tr>
					<tr><td><strong>층수</strong></td><td>${housedeal.floor}</td></tr>
				</table>
            </div>
            <div class="col-lg-1"></div>
          </div>

        </div>
      </section><!-- End Features Section -->