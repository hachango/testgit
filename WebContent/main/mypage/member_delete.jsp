<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
		<div class="container">
			<form role="form">
				<fieldset>
					<legend>회원탈퇴</legend>
					<div class="form-group">
						<label for="user_id">아이디</label>
						<input type="text" id="user_id" class="form-control" placeholder="아이디를 입력하세요."/>
						<span class="help-block">* 아이디는 필수 입력입니다.</span>
					</div>

					<div class="form-group">
						<label for="user_pw">비밀번호</label>
						<input type="password" id="user_pw" class="form-control" placeholder="비밀번호를 입력하세요."/>
					</div>

					<button type="button" class="btn btn-danger btn-block">
						회원탈퇴
					</button>
					<!--// 여기까지 입니다. -->
				</fieldset>
			</form>
		</div>