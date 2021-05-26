<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script>Kakao.init('bf61f9b0f02f84fdef6bffe53c80eb3e');</script>

<script type="text/javascript">
  function sendTo() {
    Kakao.Auth.login({
      scope: 'PROFILE,TALK_MESSAGE',
      success: function() {
        Kakao.API.request({
          url: '/v2/api/talk/memo/default/send',
          data: {
            template_object: {
              object_type: 'text',
                text: 
                `[${housedeal.aptName}]\n\n위치 : ${housedeal.aptName}\n거래금액 : ${housedeal.dealAmount} 만원\n완공년도 : ${housedeal.buildYear}\n거래 일자 : ${housedeal.dealYear}년 ${housedeal.dealMonth}월 ${housedeal.dealDay}일\n면적 : ${housedeal.area}㎡\n`,
                link: {
                  mobile_web_url: 'https://developers.kakao.com',
                  web_url: 'https://developers.kakao.com',
              },
              buttons: [
                {
                  title: '웹으로 보기',
                  link: {
                    mobile_web_url: 'http://localhost:8888/happyhouse',
                    web_url: 'http://localhost:8888/happyhouse',
                  },
                },
                {
                  title: '검색하기',
                  link: {
                    mobile_web_url: 'http://localhost:8888/happyhouse',
                    web_url: 'http://localhost:8888/happyhouse',
                  },
                },
              ],
            },
          },
          success: function(res) {
            alert('카카오톡 메세지를 통해 공유되었습니다.')
          },
          fail: function(err) {
            alert('error: ' + JSON.stringify(err))
          },
        })
      },
      fail: function(err) {
        alert('failed to login: ' + JSON.stringify(err))
      },
    })
  }
</script>
    
<!-- ======= Features Section ======= -->
      <section id="features" class="features">
        <div class="container">

          <div class="row">
         <div class="col-lg-1"></div>

            <div class="col-lg-5 d-flex align-items-stretch">
              <div class="card" data-aos="fade-up">
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
				<h3 class= "mb-4">${housedeal.aptName} 상세 정보 &nbsp;
				
				<a id="send-to-btn" href="#" onclick="sendTo();">
  				<img  style="width:30px; height:30px;" src="//k.kakaocdn.net/14/dn/btqc6xrxbuT/7VJk7YSWITkz9K9pbXEffk/o.jpg" />
				</a>
				<!-- <i class="icofont-external-link" style="color: #79bd9a;"></i> --></h3>
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