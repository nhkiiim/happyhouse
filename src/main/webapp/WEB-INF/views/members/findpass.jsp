<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="modal fade in" id="findModal" role="dialog" aria-hidden="true">
<script>
$(function(){
	$("#findbutton").on("click",function(){
		let userid=$("#userid").val();
		$.ajax({
			url : "${root}/find",
			type: "get",
			data : {uid: userid},
			success : function(data){
				$("#pass").html(data);
			},
			error : function(xhs,status,msg){
				alert("error: "+msg);
			}
		});
	});
});
</script>
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content rounded-lg">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">비밀번호 찾기</h4>
					<button type="button" class="close" data-dismiss="modal">×</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div class="container">
					
						<form action="findpwd" method="post" class="form-group mt-2 mb-2">
						<div class="row mb-3">
							<label class="col-md-3" for="jid">아이디 *</label>
							<input class="col-md-9 form-control" id="userid" name="id" type="text" required>
						</div>
						<div class="row mb-3">
							<label class="col-md-3" for="jName">이름
								*</label> <input class="col-md-9 form-control" id="jName" name="name" type="text"
								required>
						</div>
						<div class="row mb-3">
							<label class="col-md-3" for="jCellphone">전화번호
								*</label> <input class="col-md-9 form-control" id="jCellphone" name="phone"
								type="text" placeholder="010-xxxx-xxxx" required>
						</div>
						<br>
							
						
						<div class="container d-flex justify-content-center">
							<input type="submit" class="btn btn-success mr-2 col-3"></input>
						</div>
						
						
						</form>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	