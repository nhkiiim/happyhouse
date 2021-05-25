<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="modal fade" id="sendModal" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content rounded-lg">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">구독 메일 발송</h4>
					<button type="button" class="close" data-dismiss="modal">×</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div class="container">
					<form action="sendSubscribe" method="post" id="sendsubscribeform" class="was-validated">
						<div class="form-group mt-2 mb-2">
						<div class="row mb-3">
							<label class="col-md-3" for="sTitle">제목
								*</label> <input class="col-md-9 form-control" id="sTitle" name="title" type="text"
								required>
						</div>
						<div class="row mb-3">
							<label class="col-md-3" for="sContent">내용
								*</label> <textarea class="col-md-9 form-control" id="sContent" name="content" type="text"
								required></textarea>
						</div>
						</div>
					</form>
					</div>
				</div>
				<!-- Modal footer -->
				<div class="modal-footer">
						<button type="submit" form="sendsubscribeform" class="btn btn-success col-3">발송</button>
				</div>
			</div>
		</div>
</div>