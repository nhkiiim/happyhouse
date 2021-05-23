<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="modal fade" id="insertnoticeModal" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content rounded-lg">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">공지사항 등록</h4>
					<button type="button" class="close" data-dismiss="modal">×</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div class="container">
					<form action="insert" method="post" class="was-validated" id="joinform">
						<div class="form-group mt-2 mb-2">
						<div class="row mb-3">
							<label class="col-md-3" for="nTitle">제목 *</label>
							<input class="col-md-9 form-control" id="nTitle" name="title" type="text" required>
						</div>
						<div class="row mb-3">
							<label class="col-md-3" for="nContent">내용 *</label>
							<input class="col-md-9 form-control" id="nContent" name="content" type="text" required>
						</div>
						</div>
					</form>
					</div>
				</div>
				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="submit" form="insertform" class="btn btn-success col-4">등록!</button>
				</div>
			</div>
		</div>
	</div>