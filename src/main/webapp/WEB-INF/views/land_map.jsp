<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="modal fade in" id="landMapModal" role="dialog"
	aria-hidden="true">
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bf61f9b0f02f84fdef6bffe53c80eb3e"></script>

	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content rounded-lg">

			<!-- Modal Header -->
			<div class="modal-header">
				<h5 class="modal-title">${landDong} 부동산</h5>
				<button type="button" class="close" data-dismiss="modal">×</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">
				<div class="container">
				<div id="map" style="width: 100%; height: 300px;"></div>
	
					<script>
						
						var lng=${bal.lng};
						var lat=${bal.lat};
						
						var mapContainer = document.getElementById('map'), mapOption = {
							center : new kakao.maps.LatLng(${bal.lat}+0.02,${bal.lng}-0.04),
							level : 7
						};

						var map = new kakao.maps.Map(mapContainer, mapOption);

						var markerPosition = new kakao.maps.LatLng(lat,
								lng);

						var marker = new kakao.maps.Marker({
							position : markerPosition
						});
						
						marker.setMap(map);
						
						function relayout() {    
						    
						    map.relayout();
						}
					</script>
				</div>
			</div>
			<!-- Modal footer -->
			<div class="modal-footer">
				<div class="container d-flex justify-content-center">
						<button type="button"
						class="btn btn-success mr-2 col-3" onclick="relayout()">지도 호출</button>
				</div>
			</div>
		</div>
	</div>





</div>