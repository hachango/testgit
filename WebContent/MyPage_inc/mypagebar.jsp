<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>


<div class="container">

			<h1>마이페이지</h1>
			<!-- 탭 메뉴 시작 -->
			<ul class="nav nav-tabs">
				<li class="active"><a href="#home" data-toggle="tab">클립보드</a></li>
				<li class="dropdown">
					<a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown">여행일정 <b class="caret"></b></a>
					<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
						<li><a href="#dropdown1" tabindex="-1" data-toggle="tab">완성된 일정</a></li>
						<li><a href="#dropdown2" tabindex="-1" data-toggle="tab">계획중인 일정</a></li>
						<li><a href="#dropdown3" tabindex="-1" data-toggle="tab">좋아한 일정</a></li>
					</ul>
				</li>
				<li><a href="#profile" data-toggle="tab">개인정보 수정</a></li>
				<li><a href="#memberdelete" data-toggle="tab">회원탈퇴</a></li>
			</ul>
			<!--// 탭 메뉴 끝 -->
			<!-- 탭 화면 시작 -->
<div class="tab-content">			
				<div role="menu" class="tab-pane fade in active" id="home">
					<%@ include file="form_clipboard.jsp" %>
				</div>				
				<div role="menu" class="tab-pane fade" id="dropdown1">
					<%@ include file="form_memberdelete.jsp" %>
				</div>
				<div role="menu" class="tab-pane fade" id="dropdown2">
					<%@ include file="form_memberdelete.jsp" %>
				</div>
				<div role="menu" class="tab-pane fade" id="profile">
					<%@ include file="form_memberdelete.jsp" %>
				</div>
				<div role="menu" class="tab-pane fade" id="memberdelete">
					<%@ include file="form_memberdelete.jsp" %>
				</div>
			</div>
			<!--// 탭 화면 끝 -->		
</div>
			