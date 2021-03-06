<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="modal fade" id="joinModal" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content rounded-lg">

			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">회원가입</h4>
				<button type="button" class="close" data-dismiss="modal">×</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">
				<div class="container">
					<form action="join" method="post" class="was-validated"
						id="joinform">
						<div class="form-group mt-2 mb-2">
							<div class="row mb-3">
								<label class="col-md-3" for="jid">아이디 *</label> <input
									class="col-md-9 form-control" id="jID" name="id" type="text"
									required>
							</div>
							<div class="row mb-3">
								<label class="col-md-3" for="jPassword">비밀번호 *</label> <input
									class="col-md-9 form-control" id="jPassword" name="pass"
									maxlength="20" type="password" placeholder="영문 숫자 포함 6자리 이상"
									required>
							</div>
							<div class="row mb-3">
								<label class="col-md-3" for="jName">이름 *</label> <input
									class="col-md-9 form-control" id="jName" name="name"
									type="text" placeholder="User Name" required>
							</div>
							<div class="row mb-3">
								<label class="col-md-3" for="jAddress">이메일 *</label> <input
									class="col-md-9 form-control" id="jAddress" name="address"
									type="email" placeholder="name@example.com"
									aria-describedby="emailHelp" required>
							</div>
							<div class="row mb-3">
								<label class="col-md-3" for="jCellphone">전화번호 *</label> <input
									class="col-md-9 form-control" id="jCellphone" name="phone"
									type="text" placeholder="010-xxxx-xxxx" required>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="submit" form="joinform" class="btn btn-success col-4">회원가입!</button>
			</div>
		</div>
	</div>
</div>