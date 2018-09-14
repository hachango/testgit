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
 <%@ include file="MyPage_inc/mypagebar.jsp" %>
 <%@ include file="MyPage_inc/clipboard.jsp" %>	

	
<div class="container">
<%@ include file="BasicUI/footer.jsp" %>
</div>	

		<!-- Javascript -->
		<script src="assets/js/jquery-1.10.2.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="plugins/sweetalert/sweetalert2.all.min.js"></script>
		<script>
			$(function(){

				$(".btn2").click(function(){
					// 확인,취소버튼에 따른 후속 처리 구현
					swal({
						title:'확인',												// 제목
						text:"정말 삭제하시겠습니까?",								// 내용
						type:'warning',												// 확인버튼 표시 문구
						confirmButtonText:'완료',									// 아이콘 종류
						showCancelButton:true,										//취소버튼 표시 여부
						cancelButtonText:'취소'										// 취소버튼 표시문구
					})
					.then(function(result){											// 버튼이 눌러졌을 경우의 콜백 연결
						if(result.value) {
							swal('삭제','성공적으로 삭제되었습니다.','success');			// 확인 버튼이 눌러진 경우
						} else if(result.dismiss==='cancel'){						// 취소버튼이 눌러진 경우
							swal('취소','삭제가 취소되었습니다.','error');		
						}
					});
				});
			});
		</script>
</body>
</html>




