<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Modal Login -->
	<div class="modal fade" id="loginModal" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content rounded-lg">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">로그인</h4>
					<button type="button" class="close" data-dismiss="modal">×</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div class="container">
						<form action="login" method="post" id="userlogin">
						<div class="form-group mt-2 mb-2">
						<div class="row mb-3">
							<label class="col-md-3" for="uid">아이디 </label>
							<input class="col-md-9 form-control" id="uID" name="id" type="text">
						</div>
						<div class="row mb-3">
							<label class="col-md-3" for="uPassword">비밀번호 </label>
							<input class="col-md-9 form-control" id="uPassword" name="pass"
								type="password">
						</div>
						</div>
					</form>
					</div>
				</div>
				<!-- Modal footer -->
				<div class="modal-footer">
					<button id="btn-login" type="submit" form="userlogin" class="btn btn-success col-3">로그인</button>
				</div>
			</div>
		</div>
	</div>
	