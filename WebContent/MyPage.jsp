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
			
			.thumbnail { height: 350px; }
		</style>
	</head>
 <body>
	<%@ include file="main/inc/nav/navbar.jsp" %>
	<%@ include file="main/mypage/mypage_bar.jsp" %>
	<!-- 탭 페이지 -->
	<div class="tab-content">
		<div role="tabpanel" class="tab-pane fade active in" id="mypageTab1">
			<%@ include file="main/mypage/clipboard.jsp" %>
		</div>
		<div role="tabpanel" class="tab-pane fade" id="mypageTab2">
			<%@ include file="main/mypage/trip_plan.jsp"%>
      	</div>
		<div role="tabpanel" class="tab-pane fade" id="mypageTab3">
			<%@ include file="main/mypage/member_edit.jsp"%>
		</div>
		<div role="tabpanel" class="tab-pane fade" id="mypageTab4">
			<%@ include file="main/mypage/member_delete.jsp"%>
		</div>
	</div>
	<!--//탭 페이지 -->
	
	<%@ include file="main/inc/footer.jsp" %>
</body>
</html>