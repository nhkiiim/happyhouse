<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="modal fade" id="out" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content rounded-lg">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title justify-content-center">탈퇴하시겠습니까?</h4>
					<button type="button" class="close" data-dismiss="modal">×</button>
				</div>

				<!-- Modal footer -->
				<form action="userdelete" method="post" id="deleform">
				</form>
				<div class="modal-footer justify-content-center">
						<button type="button" class="btn btn-success" data-dismiss="modal">아니요</button>
						<button type="submit" class="btn btn-danger" form="deleform">네</button>
				</div>
			</div>
		</div>
	</div>