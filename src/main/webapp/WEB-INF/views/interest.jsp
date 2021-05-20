<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<section id="star" class="portfolio section-bg">
	<div class="container">

		<div class="section-title" data-aos="fade-down">
			<span>Region of Interest</span>
			<h2>Region of Interest</h2>
			<h5 class="mt-2">관심 지역을 등록하세요~</h5>
		</div>

			<div class="container">
				<form action="interregist" method="post" id="registform">
					<div class="form-group mt-5 mb-2">
						<div class="row mb-3">
							<label class="col-md-3 " for="uid"></label> <input
								class="col-md-6 form-control" id="uID" name="city" type="text"
								placeholder="도/광역시">
						</div>
						<div class="row mb-3">
							<label class="col-md-3 " for="uPassword"></label> <input
								class="col-md-6 form-control" id="uPassword" name="gugun"
								type="text" placeholder="시/구/군">
						</div>
						<div class="row mb-3">
							<label class="col-md-3" for="uPassword"></label> <input
								class="col-md-6 form-control" id="uPassword" name="dong"
								type="text" placeholder="동"><br>
						</div>
					</div>
				</form>
			</div>
			<div class="section-title mb-5" data-aos="fade-down">
				<button type="submit" form="registform" class="btn btn-success">등록</button>
			</div>

	</div>
</section>