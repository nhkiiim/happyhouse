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
                  <p class="card-text"></p>
                </div>
              </div>
            </div>
            
            <div class="col-lg-6">
            	<h3>아파트 상세 정보</h3>
            	<ul>
            		<li>${housedeal.no}</li>
					<li>${housedeal.dong}</li>
					<li>${housedeal.aptName}</li>
					<li>${housedeal.code}</li>
					<li>${housedeal.dealAmount}</li>
					<li>${housedeal.buildYear}</li>
					<li>${housedeal.dealYear}</li>
					<li>${housedeal.dealMonth}</li>
					<li>${housedeal.dealDay}</li>
					<li>${housedeal.area}</li>
					<li>${housedeal.floor}</li>
					<li>${housedeal.jibun}</li>
				</ul>
            </div>
          </div>

        </div>
      </section><!-- End Features Section -->