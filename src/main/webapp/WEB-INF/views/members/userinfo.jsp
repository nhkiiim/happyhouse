<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="modal fade in" id="userInfoModal" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content rounded-lg">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">회원 정보 확인</h4>
					<button type="button" class="close" data-dismiss="modal">×</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div class="container">
						<div class="form-group mt-2 mb-2">
						<div class="row mb-3">
							<label class="col" for="uersInfo_uID">아이디 : ${userinfo.id}</label>
						</div>
						<div class="row mb-3">
							<label class="col" for="uersInfo_uPassword">비밀번호 : ${userinfo.pass}</label>
						</div>
						<div class="row mb-3">
							<label class="col" for="uersInfo_uName">이름 : ${userinfo.name}</label>
						</div>
						<div class="row mb-3">
							<label class="col" for="uersInfo_uAddress">이메일 : ${userinfo.address}</label>
						</div>
						<div class="row mb-3">
							<label class="col" for="uersInfo_uCellphone">전화번호	 : ${userinfo.phone}</label>
						</div>
						</div>
					</div>
				</div>
				<!-- Modal footer -->
				<div class="modal-footer">
					<div class="container d-flex justify-content-center">
						<button type="button" class="btn btn-success mr-2 col-3" data-dismiss="modal">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	