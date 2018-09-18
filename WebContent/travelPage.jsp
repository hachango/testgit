<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<!doctype html>
<html lang='ko'>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<%@ include file="main/inc/common.jsp" %>	
	<style>
		h1{
			padding-top: 50px;
		}
	</style>
</head>
<body>
	<%@ include file="main/inc/nav/navbar.jsp" %>
	
	<!-- 탭 페이지 -->
	<div class="tab-content">
		<div role="tabpanel" class="tab-pane fade active in" id="travelTab1">
			<h1>test1</h1>
			<div class="container">
                <!--게시물 하나 시작-->
                <div class="col-sm-6 col-md-3">
                    <div class="thumbnail">
    				<img alt="엔틱 자전거 -my wish list" src="img/thumb1.jpg">
                    <div class="caption">
                        <h3>경복궁</h3>
                        <p>이미지 테스트</p>
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
    				<img alt="엔틱 자전거 -my wish list" src="img/thumb2.jpg">
                    <div class="caption">
                        <h3>경복궁</h3>
                        <p>이미지 테스트</p>
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
		<div role="tabpanel" class="tab-pane faden" id="travelTab2">
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
	
		<!-- Javascript -->
		<script src="assets/js/jquery-1.10.2.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>

		<script type="text/javascript">
			$(function(){
				$("#mytab a").on('show.bs.tab', function(e){
					var tab_target = $(this).attr("href");
				});
			});
		</script>
	
</body>

</html>