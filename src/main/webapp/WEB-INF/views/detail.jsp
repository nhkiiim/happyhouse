<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ======= Features Section ======= -->
      <section id="features" class="features">
        <div class="container">

          <div class="row">
         <div class="col-lg-1"></div>

            <div class="col-lg-5 d-flex align-items-stretch">
              <div class="card" data-aos="fade-up">
                <img src="${root}/img/building.jpg" class="card-img-top" alt="...">
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
					<tr><td><strong>면적</strong></td><td>${housedeal.area}</td></tr>
					<tr><td><strong>층수</strong></td><td>${housedeal.floor}</td></tr>
				</table>
            </div>
            <div class="col-lg-1"></div>
          </div>

        </div>
      </section><!-- End Features Section -->