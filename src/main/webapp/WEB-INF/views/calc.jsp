<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script>
$(function(){
	$("#pmb").on("click",function(){
		let p=$("#p").val();
		$.ajax({
			url : "${root}/pm",
			type: "get",
			data : {uid: p},
			success : function(data){
				$("#phtml").html(data+" ㎡");
			},
			error : function(xhs,status,msg){
				alert("error: "+msg);
			}
		});
	});
});

$(function(){
	$("#mpb").on("click",function(){
		let m=$("#m").val();
		$.ajax({
			url : "${root}/mp",
			type: "get",
			data : {uid: m},
			success : function(data){
				$("#mhtml").html(data+" 평");
			},
			error : function(xhs,status,msg){
				alert("error: "+msg);
			}
		});
	});
});
</script>

      <section id="calc" class="contact">
        <div class="container mb-5">

          <div class="section-title" data-aos="fade-down">
            <span>calc</span>
            <h2>calc</h2>
          </div>

          <div class="row justify-content-center">
            <div class="col-lg-6 col-md-12" data-aos="fade-up" data-aos-delay="100">
              <div class="info-box">
                <i class="bx bx-bookmark-alt-plus"></i>
                <h3>평수 - 면적</h3>
                <p>1평은 3.31㎡ 입니다</p>
              </div>
            </div>
            <div class="col-lg-6 col-md-6 mt-4 mt-lg-0" data-aos="fade-up" data-aos-delay="200">
              <div class="info-box">
                <i class="bx bx-bookmark-alt-plus"></i>
                <h3>면적 - 평수</h3>
                <p>1㎡는 0.3025평 입니다</p>
              </div>
            </div>
          </div>

			<div class="php-email-form mt-4">
            <div class="form-row mb-5">
              <div class="col-md-5 form-group">
                <input type="text" name="p" class="form-control" id="p" placeholder="평수" />
                <div class="validate"></div>
              </div>
              <div class="text-center col-md-2"><button id="pmb" type="submit">change</button></div>
              <div class="col-md-5 form-group text-center">
              	<h5 id="phtml"></h5>
                <div class="validate"></div>
              </div>
            </div>
            
            <div class="form-row">
              <div class="col-md-5 form-group">
         	<input type="text" class="form-control" name="m" id="m" placeholder="면적" />
                       <div class="validate"></div>
              </div>
              <div class="text-center col-md-2"><button id="mpb" type="submit">change</button></div>
              <div class="col-md-5 text-center form-group">
                 	<h5 id="mhtml"></h5>
                <div class="validate"></div>
              </div>
            </div>
            
			</div>

        </div>
        <div class="mb-5">&nbsp;</div>
      </section>
      
