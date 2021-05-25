<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style>
    .counts {
  padding: 70px 0 60px;
}

.counts .count-box {
  padding: 30px 30px 25px 30px;
  width: 100%;
  position: relative;
  text-align: center;
  background: #F0F7F3;
}

.counts .count-box i {
  position: absolute;
  top: -28px;
  left: 50%;
  transform: translateX(-50%);
  font-size: 24px;
  background: #79bd9a;
  padding: 12px;
  color: #fff;
  border-radius: 50px;
  border: 5px solid #fff;
}

.counts .count-box span {
  font-size: 36px;
  display: block;
  font-weight: 600;
  color: gray;
}

.counts .count-box p {
  padding: 0;
  margin: 0;
  font-family: "Roboto", sans-serif;
  font-size: 14px;
}
</style>

<section id="avg">
	<div class="container">
		<div class="section-title" data-aos="fade-down">
			<span>average price</span>
			<h2>average price</h2>
			  <h6 class="mt-2">동별 매물 면적에 따른 평균 가격 정보를 확인하세요 ( 단위 : 만원 )</h6>
		</div>

		<div class="mb-3">
			<div class="w-75" style="float: none; margin: 0 auto;">
				<form id="avgform" action="avg" method="get">
				<div class="justify-content-center d-flex flex-row mb-3">
					<c:if test="${empty avgDong}">
					<input class="form-control mr-2 w-50" type="text" name="dong" value="${interest_info.dong}">
					</c:if>
					<c:if test="${!empty avgDong}">
					<input class="form-control mr-2 w-50" type="text" name="dong" value="${avgDong}">
					</c:if>
					<input class="btn btn-success btm-sm" type="submit" value="Search"><br>
				</div>
			</form>
		</div>
		</div>

        <div class="row counts mt-5">

          <div class="col-lg-3 col-md-6">
            <div class="count-box">
              <i class="icofont-user-alt-6"></i>
            	<c:if test="${!empty avgDong}">	
              <span data-toggle="counter-up">${avg60}</span>
              </c:if>
              <c:if test="${empty avgDong}">	
              <span data-toggle="counter-up">?</span>
              </c:if>
              <p>면적 &lt; 60㎡</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-5 mt-md-0">
            <div class="count-box">
              <i class="icofont-home"></i>
              <c:if test="${!empty avgDong}">
              <span data-toggle="counter-up">${avg80}</span>
              </c:if>
              <c:if test="${empty avgDong}">	
              <span data-toggle="counter-up">?</span>
              </c:if>
              <p>60㎡ &lt; 면적 &lt; 80㎡</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
            <div class="count-box">
              <i class="icofont-building"></i>
              <c:if test="${!empty avgDong}">
              <span data-toggle="counter-up">${avg100}</span>
              </c:if>
              <c:if test="${empty avgDong}">	
              <span data-toggle="counter-up">?</span>
              </c:if>
              <p>80㎡ &lt; 면적 &lt; 120㎡</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
            <div class="count-box">
              <i class="icofont-users"></i>
              <c:if test="${!empty avgDong}">
              <span data-toggle="counter-up">${avg140}</span>
              </c:if>
              <c:if test="${empty avgDong}">	
              <span data-toggle="counter-up">?</span>
              </c:if>
              <p>면적 &gt; 120㎡</p>
            </div>
          </div>
        </div>

      </div>
    </section>