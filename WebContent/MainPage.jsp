<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head> 
<%@ include file="BasicUI/common.jsp" %>
		<style type="text/css">
			body {
				padding-top: 50px;
				padding-bottom: 20px;
			}

			.input-group{
				width: 400px;
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
			.thumbnail { height: 350px; }
		</style>
	</head>
<body>
<%@ include file="BasicUI/navbar.jsp" %>
<%@ include file="BasicUI/carousel.jsp" %>
<div class="container">
<%@ include file="BasicUI/grid.jsp" %>
<%@ include file="BasicUI/footer.jsp" %>
</div>
		<!-- Javascript -->
		<script src="assets/js/jquery-1.10.2.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
	</body>
</html>