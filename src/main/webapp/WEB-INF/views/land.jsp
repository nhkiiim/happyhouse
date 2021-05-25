<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
      <section id="land" class="portfolio section-bg">
        <div class="container">

          <div class="section-title" data-aos="fade-down">
            <span>real estate</span>
            <h2>real estate</h2>
            <p>동별로 부동산을 추천해드립니다!</p>
          </div>
          
          <div class="mb-3">
			<div class="w-75" style="float: none; margin: 0 auto;">
				<form id="landform" action="land" method="get">
				<div class="justify-content-center d-flex flex-row mb-3">
					<c:if test="${empty landDong}">
					<input class="form-control mr-2 w-50" type="text" name="dong" value="${interest_info.dong}">
					</c:if>
					<c:if test="${!empty landDong}">
					<input class="form-control mr-2 w-50" type="text" name="dong" value="${landDong}">
					</c:if>
					<input class="btn btn-success btm-sm" type="submit" value="Search"><br>
				</div>
				</form>
			</div>
			<c:if test="${empty landDong}">
			<div class="text-center justify-content-center mt-5 mb-5">
			<img src="${root}/img/trade1.png">
			</div>
			</c:if>
		</div>

	

	<c:if test="${!empty landDong}">
          <div class="row portfolio-container mt-5 mb-5" data-aos="fade-up" data-aos-delay="300">

            <div class="col-lg-4 col-md-6 portfolio-item">
              <div class="portfolio-wrap">
                <img src="${root}/img/land1.jpg" class="img-fluid" alt="">
                <c:if test="${!empty lands}">
                <div class="portfolio-info">
                  <h4>${l1.name}</h4>
                  <p>${landDong}</p>
                </div>
                <div class="portfolio-links">
                  <a href="#" data-toggle="modal" data-target="#landMapModal"><i class="bx bx-link"></i></a>
                </div>
                </c:if>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item">
              <div class="portfolio-wrap">
                <img src="${root}/img/land2.jpg" class="img-fluid" alt="">
                <div class="portfolio-info">
                  <h4>${l2.name}</h4>
                  <p>${landDong}</p>
                </div>
                <div class="portfolio-links">
                   <a href="#" data-toggle="modal" data-target="#landMapModal"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item">
              <div class="portfolio-wrap">
                <img src="${root}/img/land3.jpg" class="img-fluid" alt="">
                <div class="portfolio-info">
                  <h4>${l3.name}</h4>
                  <p>${landDong}</p>
                </div>
                <div class="portfolio-links">
                  <a href="#" data-toggle="modal" data-target="#landMapModal"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>

          </div>
	</c:if>

        </div>
      </section>
