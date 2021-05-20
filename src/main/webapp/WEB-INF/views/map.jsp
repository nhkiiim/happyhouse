<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
    
<section id="search" class="search">
        <div class="container">
			<div class="section-title" data-aos="fade-down">
            <span>Region of Interest</span>
            <h2>Region of Interest</h2>
 
           
           <!-- 버튼 -->
       <div data-aos="fade-right" class="col d-flex align-items-stretch justify-content-center mt-3 mb-3">
       <!--  
         <form class="form-inline" id="frm">
		      <div class="form-group md mr-2">
                <select class="form-control" name="city" id="city">
                	 <option value="all" >${interest_info.city}</option>
                </select>
              </div>
              <div class="form-group md-1 mr-2">
                <select class="form-control" name="dongcode" id="gu">
                  <option value="all" >${interest_info.gugun}</option>
		        </select>
              </div>
              <div class="form-group md-1 mr-3">
                <select class="form-control" name="dong" id="dong">
               <option value="all" >${interest_info.dong}</option>
		           </select>
              </div>             
              <button type="button" id="search_reset" class="btn btn-success">RESET</button>
            </form>
       		-->
       		
	      	<h5>관심지역&nbsp; :&nbsp; ${interest_info.city}&nbsp; ${interest_info.gugun}&nbsp; ${interest_info.dong}</h5>
          </div>
           
    	  
		  
		  <!-- 중간부  -->  
        <div class="row">
        	<div id="map_div" class="col">
        	<!-- 지도 -->

          <div id="map" style="width:700px; height: 450px; margin: auto;">
          </div>
            <script defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBSAi87EFvSswrN4knxhU6flqYvs7ISJdw&callback=initMap"></script>
            <script>
	            var locations =[];

				locations = [
					 	 ['도봉구'	,	37.6658609	,	127.0317674	],
						 ['은평구'	,	37.6176125	,	126.9227004	],
						 ['동대문구'	,	37.5838012	,	127.0507003	],
						 ['동작구'	,	37.4965037	,	126.9443073	],
						 ['금천구'	,	37.4600969	,	126.9001546	],
						 ['구로구'	,	37.4954856	,	126.858121	],
						 ['종로구'	,	37.5990998	,	126.9861493	],
						 ['강북구'	,	37.6469954	,	127.0147158	],
						 ['중랑구'	,	37.5953795	,	127.0939669	],
						 ['강남구'	,	37.4959854	,	127.0664091	],
						 ['강서구'	,	37.5657617	,	126.8226561	],
						 ['중구'		,	37.5579452	,	126.9941904	],
						 ['강동구'	,	37.5492077	,	127.1464824	],
						 ['광진구'	,	37.5481445	,	127.0857528	],
						 ['마포구'	,	37.5622906	,	126.9087803	],
						 ['서초구'	,	37.4769528	,	127.0378103	],
						 ['성북구'	,	37.606991	,	127.0232185	],
						 ['노원구'	,	37.655264	,	127.0771201	],
						 ['송파구'	,	37.5048534	,	127.1144822	],
						 ['서대문구'	,	37.5820369	,	126.9356665	],
						 ['양천구'	,	37.5270616	,	126.8561534	],
						 ['영등포구'	,	37.520641	,	126.9139242	],
						 ['관악구'	,	37.4653993	,	126.9438071	],
						 ['성동구'	,	37.5506753	,	127.0409622	],
						 ['용산구'	,	37.5311008	,	126.9810742	]
				 ];
				
			var map = null;
			var latitude;
			var longitude;
			var lat;
			var lng;
			var zoom;
			
			///////////////////////////////////////////////////event 설정 및 초기 설정 
			$(function(){
			  ///////////////////////////////시, 도 선택 이벤트 처리 
					$('#city').change(function(){
						var city = $(this).val();
					})
					
					///////////////////////////////구, 군 선택 이벤트 처리 
					$('#gu').change(function(){
						var gu = $(this).val();
					})					
					
					///////////////////////////////동 선택 이벤트 처리
					$('#dong').change(function(){
							lat = 37.6658790;
							lng = 127.0317550;
							zoom=13;
							
							var opt = {
									// google map에 중앙으로 표시할 좌표 설정
									center : {lat:lat,lng: lng},
									zoom : zoom,  //0~ 21  큰 값일 수록  zooming
								};
								//google.maps.Map(map을 그릴 영역, 옵션정보 );
								map = new google.maps.Map(document.getElementById("map"), opt);
								
								var infowindow = new google.maps.InfoWindow();
								
					})
			})
			
			
			function processGuResult(jsondata, status, xhr){
			console.log('결과 도착')
			var list = jsondata;
			console.log(list)
			var contents = $('#gu');
			contents.empty();				//기존에 내용이 있으면 비우기 
			$('<option value="all">시/구/군</option>').appendTo(contents)
				$.each(list, function(index, item) {
					$('<option value="'+item.dongcode+'">'+item.gugun+'</option>').appendTo(contents)
				})
			}
			
			function processDongResult(jsondata, status, xhr){
			console.log('결과 도착')
			var list = jsondata;
			console.log(list)
			var contents = $('#dong');
			contents.empty();				//기존에 내용이 있으면 비우기
			 $('<option value="all">동</option>').appendTo(contents)
				$.each(list, function(index, item) {
					$('<option value="'+item.dong+'">'+item.dong+'</option>').appendTo(contents)
				})
			}
			
			
			///////////////////////////////////////////////////맵 설정
			lat = ${address_info.lat};
			lng = ${address_info.lng};
			zoom = 14;
						
			
			function initMap() {
			//getLocation();
			var opt = {
				// google map에 중앙으로 표시할 좌표 설정
				center : {lat:lat,lng: lng},
				zoom : zoom,  //0~ 21  큰 값일 수록  zooming
			};
			//google.maps.Map(map을 그릴 영역, 옵션정보 );
			map = new google.maps.Map(document.getElementById("map"), opt);
			
			var infowindow = new google.maps.InfoWindow();
			
			var marker, i;
			for (i = 0; i < locations.length; i++) {  
			marker = new google.maps.Marker({
			id:i,
			title : locations[i][0],
			label : locations[i][0],
			position: new google.maps.LatLng(locations[i][1], locations[i][2]),
			map: map
			});
			
			google.maps.event.addListener(marker, 'click', (function(marker, i) {
			return function() {
			infowindow.setContent(locations[i][0]);
			infowindow.open(map, marker);
			}
			})(marker, i));
			if(marker)
			{
			marker.addListener('click', function() {
			console.log(this.title);
			map.setZoom(15);
			map.panTo(this.getPosition());
			});
			}
			}
			}
			
			
			
			/// 현재 위치를 최초위치로.
			
			function showLocation(position) {
			latitude = position.coords.latitude;
			longitude = position.coords.longitude;
			//alert("Latitude : " + latitude + " Longitude: " + longitude);
			//현재 위치 정보를 center로 지정하기 위해 객체 생성
			var hear = new google.maps.LatLng(latitude, longitude);
			map.panTo(hear); //위치 정보를 통해 맵에 표시 
			
			/* 	
			for (var i = 0; i < results.features.length; i++) {
			var coords = results.features[i].geometry.coordinates;
			var latLng = new google.maps.LatLng(coords[1],coords[0]);
			var marker = new google.maps.Marker({
			position: latLng,
			map: map
			});
			}
			 */
			/* 	//맵에서 위치 표시하기 위한 정보 
			var marker = new google.maps.Marker({
			    position: hear,
			    title:"I'm hear!",
			    map: map
			}); */
			
			}
			
			function errorHandler(err) {
			if (err.code == 1) {
				alert("Error: Access is denied!");
			} else if (err.code == 2) {
				alert("Error: Position is unavailable!");
			}else if(err.code == 3){
				alert("Erro : Time out");
			}
			}
			function getLocation() {
			if (navigator.geolocation) {
				var options = {
					timeout : 60000,
					enabledHighAccuracy :true
				};
				navigator.geolocation.getCurrentPosition(showLocation,
						errorHandler, options);
			} else {
				alert("Sorry, browser does not support geolocation!");
			}
			}
		</script>
        	</div>
        </div>
        <div class="mt-4 mb-3">
		  	<button type="button" onclick="location.href='${root}/interdelete'" class="btn btn-success">RESET</button>
        </div>
        </div>
        </div>
      </section>