<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <section id="info" class="portfolio section-bg">
        <div class="container">

          <div class="section-title" data-aos="fade-down">
            <span>Notice</span>
            <h2>Notice</h2>
          </div>
          
          <div class="row">
		<div class="col-6">
			<button class="btn btn-success mr-2">등록</button>
		</div>		
		<div class="col-6 d-flex flex-row justify-content-end">
			<div>
				  <div class="input-group-prepend mr-1">
				    <button class="btn btn-light dropdown-toggle" data-toggle="dropdown">아이디</button>
				    <div class="dropdown-menu">
				      <a class="dropdown-item" href="#">아이디</a>
				      <a class="dropdown-item" href="#">제목</a>
				      <a class="dropdown-item" href="#">번호</a>
				    </div>
				  </div>
			</div>
    		<div class="mr-1">
  	  			<input class="form-control" type="text" placeholder="검색어 입력">
    		</div>
    		<div>
    			<button class="btn btn-secondary">Search</button>
    		</div>
		</div>
	</div>
          
			<div class="container">
			<!-- 테이블 -->
				<div class="w3-padding w3-white notranslate mt-5 mb-5">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr class="d-flex">
							  <th class="col-3">번호</th>
							  <th class="col-6">제목</th>
							  <th class="col-3">조회수</th>
							</tr>
						</thead>
					<tbody>
						<tr class="d-flex">
							  <td class="col-3">1</td>
							  <td class="col-6">제목</td>
							  <td class="col-3">5</td>
						</tr>
						<tr class="d-flex">
						  	  <td class="col-3">2</td>
							  <td class="col-6">제목</td>
							  <td class="col-3">6</td>
						</tr>
						<tr class="d-flex">
							  <td class="col-3">3</td>
							  <td class="col-6">제목</td>
							  <td class="col-3">7</td>
							  
						</tr>
						<tr class="d-flex">
							  <td class="col-3">4</td>
							  <td class="col-6">제목</td>
							  <td class="col-3">1</td>
						</tr>
					</tbody>
					</table>
				</div>
			</div>
			
			
			<!-- 페이지 -->
				<ul class="pagination justify-content-center mb-5">
			 		<li class="page-item"><a class="page-link text-success" href="#">이전</a></li>
			  		<li class="page-item"><a class="page-link text-success" href="#">1</a></li>
			  		<li class="page-item"><a class="page-link text-success" href="#">2</a></li>
			  		<li class="page-item"><a class="page-link text-success" href="#">3</a></li>
			  		<li class="page-item"><a class="page-link text-success" href="#">다음</a></li>
				</ul>	
          </div>
			</div>
      </section>