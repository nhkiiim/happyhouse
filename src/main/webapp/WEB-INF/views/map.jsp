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
				/* locations = [
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
				 ]; */
				 var locations =[];
				 
				 	locations.push(['    52,200', 37.6496953, 127.027271, "e편한세상", "images/house.jpg"])
				 	locations.push(['    20,300', 37.6548448, 127.0349748, "경남", "images/house.jpg"])
				 	locations.push(['    41,000', 37.6512992, 127.0272796, "극동", "images/house.jpg"])
				 	locations.push(['    34,900', 37.6589994, 127.033425, "금호1", "images/house.jpg"])
				 	locations.push(['    43,600', 37.6571287, 127.0292322, "금호2", "images/house.jpg"])
				 	locations.push(['    14,000', 37.6545947, 127.0344738, "기용", "images/house.jpg"])
				 	locations.push(['    70,000', 37.6553159, 127.0323146, "대우파크빌", "images/house.jpg"])
				 	locations.push(['    58,900', 37.651554, 127.02912, "대우파크힐(쌍문동이안)", "images/house.jpg"])
				 	locations.push(['    25,100', 37.6598202, 127.0356267, "대웅", "images/house.jpg"])
				 	locations.push(['    29,800', 37.6613476, 127.0381877, "도봉 금강아미움 파크타운", "images/house.jpg"])
				 	locations.push(['    26,300', 37.6513004, 127.0247059, "동익미라벨", "images/house.jpg"])
				 	locations.push(['    25,000', 37.6553186, 127.0316617, "미라보", "images/house.jpg"])
				 	locations.push(['    27,000', 37.6460275, 127.0262163, "백조", "images/house.jpg"])
				 	locations.push(['    37,000', 37.6587508, 127.0347634, "벽산송화프라자", "images/house.jpg"])
				 	locations.push(['    62,500', 37.6522545, 127.0304855, "북한산 코오롱 하늘채", "images/house.jpg"])
				 	locations.push(['    42,800', 37.6537818, 127.0136444, "북한산월드메르디앙", "images/house.jpg"])
				 	locations.push(['    50,000', 37.6472808, 127.0293876, "브라운스톤쌍문", "images/house.jpg"])
				 	locations.push(['    19,000', 37.6532731, 127.0219104, "삼보", "images/house.jpg"])
				 	locations.push(['    28,500', 37.6572028, 127.0351948, "삼익세라믹", "images/house.jpg"])
				 	locations.push(['    24,500', 37.6605252, 127.0358885, "선우", "images/house.jpg"])
				 	locations.push(['    41,000', 37.6583437, 127.0289579, "성원", "images/house.jpg"])
				 	locations.push(['    26,800', 37.6522545, 127.0304855, "솔밭노블리안", "images/house.jpg"])
				 	locations.push(['    28,000', 37.64687929999999, 127.0329396, "스마트빌", "images/house.jpg"])
				 	locations.push(['    25,800', 37.6583968, 127.0400754, "시그마팰리스", "images/house.jpg"])
				 	locations.push(['    22,000', 37.649738, 127.0310441, "신동아", "images/house.jpg"])
				 	locations.push(['    22,000', 37.657567, 127.0393018, "신라샤르망", "images/house.jpg"])
				 	locations.push(['    28,700', 37.6583229, 127.0358637, "신원2", "images/house.jpg"])
				 	locations.push(['    23,400', 37.6573275, 127.0282084, "신원에벤에셀", "images/house.jpg"])
				 	locations.push(['    27,500', 37.6505068, 127.0293206, "신일라이프", "images/house.jpg"])
				 	locations.push(['    31,000', 37.6492235, 127.0279696, "쌍문금용", "images/house.jpg"])
				 	locations.push(['    42,900', 37.6467678, 127.027929, "쌍문동삼성래미안", "images/house.jpg"])
				 	locations.push(['    33,800', 37.6435716, 127.0311842, "쌍문리버뷰", "images/house.jpg"])
				 	locations.push(['    28,000', 37.6604107, 127.0396392, "에덴", "images/house.jpg"])
				 	locations.push(['    59,000', 37.65907139999999, 127.0352919, "엘지트윈빌Ⅰ·Ⅱ", "images/house.jpg"])
				 	locations.push(['    29,800', 37.6484196, 127.0263108, "염광", "images/house.jpg"])
				 	locations.push(['    25,200', 37.6507995, 127.0319255, "원산", "images/house.jpg"])
				 	locations.push(['    27,000', 37.6577451, 127.03938, "젬스톤타운", "images/house.jpg"])
				 	locations.push(['    40,000', 37.6595556, 127.0344458, "청구", "images/house.jpg"])
				 	locations.push(['    22,300', 37.6503112, 127.0227595, "청화", "images/house.jpg"])
				 	locations.push(['    44,000', 37.65584339999999, 127.0276577, "파라다이스빌", "images/house.jpg"])
				 	locations.push(['    23,200', 37.6541198, 127.0355645, "풀내음아파트", "images/house.jpg"])
				 	locations.push(['    29,500', 37.65616929999999, 127.0365149, "피스플하우스", "images/house.jpg"])
				 	locations.push(['     9,000', 37.6495812, 127.0299424, "한솔캐스빌", "images/house.jpg"])
				 	locations.push(['    35,900', 37.6457729, 127.030316, "한양1", "images/house.jpg"])
				 	locations.push(['    16,400', 37.6570975, 127.0311388, "한양2", "images/house.jpg"])
				 	locations.push(['    16,400', 37.6570975, 127.0311388, "한양2", "images/house.jpg"])
				 	locations.push(['    30,400', 37.6559354, 127.0319325, "한양5", "images/house.jpg"])
				 	locations.push(['    44,000', 37.6557483, 127.0292388, "한양6", "images/house.jpg"])
				 	locations.push(['    39,800', 37.6560041, 127.0338322, "한양7", "images/house.jpg"])
				 	locations.push(['    18,000', 37.6585281, 127.0312211, "현대1", "images/house.jpg"])
				 	locations.push(['    35,000', 37.6591984, 127.0306616, "현대2", "images/house.jpg"])
				 	locations.push(['    29,200', 37.6518064, 127.0216044, "현대3", "images/house.jpg"])
				 	locations.push(['    40,100', 37.6665669, 127.039578, "거성학마을아파트", "images/house.jpg"])
								 	locations.push(['    34,000', 37.6643234, 127.0268376, "극동아파트", "images/house.jpg"])
								 	locations.push(['    35,750', 37.6645833, 127.0450668, "금광포란재아파트", "images/house.jpg"])
								 	locations.push(['    69,500', 37.664974, 127.048155, "대상타운현대아파트", "images/house.jpg"])
								 	locations.push(['    17,500', 37.6626224, 127.0281621, "대원그린아파트", "images/house.jpg"])
								 	locations.push(['    50,000', 37.6636071, 127.0390268, "동부센트레빌아파트", "images/house.jpg"])
								 	locations.push(['    41,500', 37.6644054, 127.0302278, "동양크레오아파트", "images/house.jpg"])
								 	locations.push(['    12,000', 37.6674038, 127.0447699, "방학 지음재힐스", "images/house.jpg"])
								 	locations.push(['    60,000', 37.66856200000001, 127.0454839, "방학E.S.A1아파트", "images/house.jpg"])
								 	locations.push(['    52,000', 37.6663859, 127.0455878, "방학E.S.A2아파트", "images/house.jpg"])
								 	locations.push(['    49,000', 37.6664804, 127.0448997, "방학E.S.A3아파트", "images/house.jpg"])
								 	locations.push(['    74,500', 37.6668979, 127.0473902, "방학동삼성래미안1", "images/house.jpg"])
								 	locations.push(['    65,000', 37.6650641, 127.0458053, "방학동삼성래미안2", "images/house.jpg"])
								 	locations.push(['    36,000', 37.66029839999999, 127.0321807, "벽산아파트1", "images/house.jpg"])
								 	locations.push(['    39,400', 37.6587155, 127.0254295, "벽산아파트2", "images/house.jpg"])
								 	locations.push(['    24,000', 37.6638949, 127.037417, "부영팰리스", "images/house.jpg"])
								 	locations.push(['    50,000', 37.6634767, 127.0450526, "브라운스톤방학아파트", "images/house.jpg"])
								 	locations.push(['    26,500', 37.6611831, 127.0339317, "삼익세라믹아파트", "images/house.jpg"])
								 	locations.push(['    39,500', 37.6615064, 127.0358939, "성원아파트", "images/house.jpg"])
								 	locations.push(['    22,000', 37.6666657, 127.0337541, "성진파크뷰 아파트", "images/house.jpg"])
								 	locations.push(['    24,500', 37.666979, 127.0360873, "송학휴스테이", "images/house.jpg"])
								 	locations.push(['    27,500', 37.6609614, 127.0265811, "신동아아파트1", "images/house.jpg"])
								 	locations.push(['    27,500', 37.6609614, 127.0265811, "신동아아파트1", "images/house.jpg"])
								 	locations.push(['    27,500', 37.6609614, 127.0265811, "신동아아파트1", "images/house.jpg"])
								 	locations.push(['    27,500', 37.6609614, 127.0265811, "신동아아파트1", "images/house.jpg"])
								 	locations.push(['    27,500', 37.6609614, 127.0265811, "신동아아파트1", "images/house.jpg"])
								 	locations.push(['    37,500', 37.6591068, 127.0234943, "신동아아파트2", "images/house.jpg"])
								 	locations.push(['    39,500', 37.660255, 127.0232072, "신동아아파트3", "images/house.jpg"])
								 	locations.push(['    27,300', 37.6626197, 127.0299133, "신동아아파트4", "images/house.jpg"])
								 	locations.push(['    38,500', 37.6633879, 127.0286599, "신동아아파트5", "images/house.jpg"])
								 	locations.push(['    31,800', 37.66216989999999, 127.0287936, "신동아타워아파트", "images/house.jpg"])
								 	locations.push(['    21,000', 37.664066, 127.0359776, "신주아파트(A동)", "images/house.jpg"])
								 	locations.push(['    16,800', 37.6641579, 127.0360852, "신주아파트B", "images/house.jpg"])
								 	locations.push(['    31,300', 37.6578986, 127.023934, "우성아파트1", "images/house.jpg"])
								 	locations.push(['    36,700', 37.6568265, 127.0219908, "우성아파트2", "images/house.jpg"])
								 	locations.push(['    42,500', 37.6637245, 127.0456082, "우암쎈스뷰아파트", "images/house.jpg"])
								 	locations.push(['    36,500', 37.6575265, 127.0260117, "청구아파트", "images/house.jpg"])
								 	locations.push(['    36,500', 37.6575265, 127.0260117, "청구아파트", "images/house.jpg"])
								 	locations.push(['    10,300', 37.6674352, 127.043873, "퍼스티안", "images/house.jpg"])
								 	locations.push(['    29,000', 37.66122259999999, 127.0316077, "한화/성원아파트", "images/house.jpg"])
								 	locations.push(['    40,500', 37.6613225, 127.0329087, "효성하이타운아파트", "images/house.jpg"])
				
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
			
			//핑찍기
			var marker, i;
			for (i = 0; i < locations.length; i++) {  
			marker = new google.maps.Marker({
			id:i,
			title : locations[i][0],
			label : locations[i][0],
			position: new google.maps.LatLng(locations[i][1], locations[i][2]),
			map: map
			}); 
			
			//핑 클릭
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