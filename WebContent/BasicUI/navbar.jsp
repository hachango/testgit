<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="navbar_loginModal.jsp" %>
		<!-- 메뉴바 -->
		<div class="navbar navbar-default navbar-fixed-top" role="navigation">
			<!-- 배경을 제외한 메뉴 항목의 영역 제한 -->
			<div class="container">
				<!-- 로고 영역 -->
				<div class="navbar-header">
					<!-- 반응형 메뉴 버튼 -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!--// 반응형 메뉴 버튼 -->
					<!-- 로고 -->
					<a class="navbar-brand" href="#">Seoul4U</a>
					<!--// 로고 -->
				</div>
				<!--// 로고 영역 -->
				<!-- 메뉴 영역 -->
				<div class="navbar-collapse collapse">
					<!-- 메인메뉴 -->
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="#">Home</a>
						</li>
						<li>
							<a href="#">축제/행사</a>
						</li>
						<li>
							<a href="#">공연/전시</a>
						</li>
						<li>
							<a href="#">맛집</a>
						</li>
						<li>
							<a href="#">여행코스</a>
						</li>
					</ul>
					<!--// 메인메뉴 -->
					<!-- 서치 + 로그인 + 회원가입 -->
					<form class="navbar-form navbar-right">
            			<input type="search" class="form-control">
							<button type="submit" class="btn btn-default">
								검색
							</button>
							<button type="button" data-toggle="modal" data-target="#myModal" class="btn btn-warning">
								로그인
							</button>

							<a href="register_form.jsp">
								<button type="button" class="btn btn-danger">회원가입</button>
							</a>
							
					</form>
					<!--// 서치 + 로그인 + 회원가입 -->
					</div>
					<!--// 메뉴 영역 -->
				</div>
					<!--// 배경을 제외한 메뉴 항목의 영역 제한 -->
				</div>
				<!--// 메뉴바 -->
