<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head>
	<%@ include file="BasicUI/common.jsp" %>
</head>
<body>
	<!-- 페이지 상단 -->
	<div class="pull-right" style="padding:40px 50px;">
		<a href="MainPage.jsp"><button class="btn btn-info">사용자페이지 이동</button></a>
	</div>
	<div class="container" style="padding:40px 50px;">
  		<h2>관리자 페이지</h2>
  		<ul class="nav nav-tabs nav-justified">
    		<li class="active"><a href="#notice">공지사항</a></li>
    		<li><a href="#member">회원관리</a></li>
    		<li><a href="#mng_place">여행지관리</a></li>
    		<li><a href="#qna">질문답변 관리</a></li>
  		</ul>
	</div>
	<!--//페이지 상단 -->
	<!-- 페이지 중단 -->
	<!-- 탭페이지 -->
	<div class=container style="padding:0px 50px;">
  		<div class="tab-content">
    		<div id="notice" class="tab-pane fade in active">
    			<%@ include file="admin/notice.jsp" %>
    		</div>
    		<div id="member" class="tab-pane fade">
     		<h3>회원관리</h3>
    		</div>
    		<div id="mng_place" class="tab-pane fade">
     		<h3>여행지관리</h3>
   			</div>
    		<div id="qna" class="tab-pane fade">
      		<h3>질문답변관리</h3>
    		</div>
  		</div>
  		<script>
		$(document).ready(function(){
    		$(".nav-tabs a").click(function(){
        		$(this).tab('show');
    		});
		});
		</script>
	</div>
	<!-- 탭페이지 -->
	<!-- 페이지 중단 -->
	
	<!-- 페이지 하단(내용 없음) -->
	<!--//페이지 하단 -->
</body>
</html>