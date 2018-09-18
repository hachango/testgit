<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head>
		<style type="text/css">
			
		</style>
	</head>
 <body>
	<div class="container">
		<nav class="navbar navbar-default" role="navigation">
    		<!--로고-->
    		<div class="navbar-header">
    		<!--반응형 메뉴 구현 기능 추가-->
    		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#gnb">
    			<span class="sr-only">메뉴열기</span>
    			<span class="icon-bar"></span>
    			<span class="icon-bar"></span>
    			<span class="icon-bar"></span>
    		</button>
    		<!--반응형 메뉴 구현 기능 추가 끝-->
    		<a class="navbar-brand" href="#"></a></div>
    		<!--메뉴 항목-->
    		<div class="collapse navbar-collapse" id="gnb">
    			<ul class="nav nav-pills">
    				<li class="active">
    					<a href="#trip_planTab1" data-toggle="pill">완성된 일정</a></li>
					<li><a href="#trip_planTab2" data-toggle="pill">계획중인 일정</a>
		    		<li><a href="#trip_planTab3" data-toggle="pill">좋아한 일정</a></li>
    			</ul>
		    	</div>
		    </nav>
	</div>	
	<div class="tab-content">
		<div role="tabpanel" class="tab-pane fade active in" id="trip_planTab1">
			<%@ include file="com_plan.jsp" %>
		</div>
		<div role="tabpanel" class="tab-pane fade" id="trip_planTab2">
			<%@ include file="ing_plan.jsp" %>
		</div>
		<div role="tabpanel" class="tab-pane fade" id="trip_planTab3">
			<%@ include file="like_plan.jsp" %>
		</div>
	</div>
	
</body>
</html>