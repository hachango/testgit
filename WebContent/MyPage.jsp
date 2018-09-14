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
 <%@ include file="BasicUI/mypagebar.jsp" %>
		
		<!-- thumbnail -->
		<div class="container">
    		<!--데스크탑: 한줄에 4개, 테블릿:한줄에 2개씩 배치되도록 그리드 구성 -->
    		<div class="row">
    			
                <!--게시물 하나 시작-->
                <div class="col-sm-6 col-md-3">
                    <div class="thumbnail">
    				<img alt="엔틱 자전거 -my wish list" src="img/img1.jpg">
                    <div class="caption">
                        <h3>경복궁</h3>
                        <p>날씨가 이리좋은데 나는 여기서 왜 이걸하는가 경복궁을 보내달라</p>
                        <div class="btn-group">
                            <a href="#" class="btn btn-success btn-sm">수정</a>
                            <a href="#" class="btn btn-danger btn-sm">삭제</a>
                        </div>
    			     </div>
                 </div>
                </div>
                <!--게시물 하나 끝-->

                <!--게시물 하나 시작-->
                <div class="col-sm-6 col-md-3">
                    <div class="thumbnail">
    				<img alt="엔틱 자전거 -my wish list" src="img/img1.jpg">
                    <div class="caption">
                        <h3>경복궁</h3>
                        <p>날씨가 이리좋은데 나는 여기서 왜 이걸하는가 경복궁을 보내달라</p>

                        <div class="btn-group">
                            <a href="#" class="btn btn-success btn-sm">수정</a>
                            <a href="#" class="btn btn-danger btn-sm">삭제</a>
                        </div>

    			     </div>
                 </div>
                </div>
                <!--게시물 하나 끝-->
                <!--게시물 하나 시작-->
                <div class="col-sm-6 col-md-3">
                    <div class="thumbnail">
    				<img alt="엔틱 자전거 -my wish list" src="img/img1.jpg">
                    <div class="caption">
                        <h3>경복궁</h3>
                        <p>날씨가 이리좋은데 나는 여기서 왜 이걸하는가 경복궁을 보내달라</p>
                        <div class="btn-group">
                            <a href="#" class="btn btn-success btn-sm">수정</a>
                            <a href="#" class="btn btn-danger btn-sm">삭제</a>
                        </div>

    			     </div>
                 </div>
                </div>
                <!--게시물 하나 끝-->
                <!--게시물 하나 시작-->
                <div class="col-sm-6 col-md-3">
                    <div class="thumbnail">
    				<img alt="엔틱 자전거 -my wish list" src="img/img1.jpg">
                    <div class="caption">
                        <h3>경복궁</h3>
                        <p>날씨가 이리좋은데 나는 여기서 왜 이걸하는가 경복궁을 보내달라</p>
                        <div class="btn-group">
                            <a href="#" class="btn btn-success btn-sm">수정</a>
                            <a href="#" class="btn btn-danger btn-sm">삭제</a>
                        </div>
    			     </div>
                 </div>
                </div>
                <!--게시물 하나 끝-->
            </div>
        </div>
		<!--//thumbnail 끝 -->
	
<div class="container">
<%@ include file="BasicUI/footer.jsp" %>
</div>
		<!-- Javascript -->
		<script src="assets/js/jquery-1.10.2.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
	</body>
</html>