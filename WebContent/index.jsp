<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head> 
<%@ include file="main/inc/common.jsp" %>
	<style type="text/css">
		body {
			padding-top: 50px;
			padding-bottom: 20px;
		}

		.carousel {
			height: 500px;
			margin-bottom: 60px;
		}

		.carousel-inner > .item > img {
			min-width: 100%;
			height: 500px;
		}

		/** 캐러셀의 반응형 기능 */
		@media (min-width: 768px) {
			.carousel-caption p {
				margin-bottom: 20px;
				font-size: 21px;
				line-height: 1.4;
			}
		}
		
		/** 그리드의 썸네일 */
		.thumbnail { height: 350px; }
	</style>
</head>
<body>
	<!-- 페이지 상단 -->
	<%@ include file="main/inc/nav/navbar.jsp" %>
	<!--//페이지 상단 -->
	
	<!-- 페이지 중단 -->
	<!-- 탭 페이지 -->
	<div class="tab-content">
		<div role="tabpanel" class="tab-pane fade active in" id="travelTab1">
			<%@ include file="main/inc/carousel.jsp" %>
			<%@ include file="main/inc/grid.jsp" %>
			
		</div>
		<div role="tabpanel" class="tab-pane fade" id="travelTab2">
			<%@ include file="main/inc/temp/thumbnail/thumbnail1.jsp"%>
      	</div>
		<div role="tabpanel" class="tab-pane fade" id="travelTab3">
			<%@ include file="main/inc/temp/thumbnail/thumbnail2.jsp"%>
		</div>
		<div role="tabpanel" class="tab-pane fade" id="travelTab4">
			<%@ include file="main/inc/temp/thumbnail/thumbnail3.jsp"%>
		</div>
		<div role="tabpanel" class="tab-pane fade" id="travelTab5">
			<%@ include file="main/inc/temp/thumbnail/thumbnail4.jsp"%>
		</div>
	</div>
	<!--//탭 페이지 -->
	<!--//페이지 중단 -->
	
	<!-- 페이지 하단 -->
	<%@ include file="main/inc/footer.jsp" %>
	<div class="container">
		<div class="pull-right">
			<a href="AdminLogin.jsp"><button class="btn btn-primary">관리자 페이지</button></a>
		</div>
	</div>
	<!--//페이지 하단 -->
</body>
</html>