<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="study.jsp.helper.WebHelper"%>
<%@ page import="study.jsp.helper.RegexHelper"%>
<%
	/* 헬퍼 객체 작성 */
	WebHelper web = WebHelper.getInstance(request, response);
	RegexHelper regex = RegexHelper.getInstance();
	
	/* 파라미터 받기 */
	String admin_id = web.getString("admin_id");
	String admin_pw = web.getString("admin_pw");
	
	/* 아이디 값 검사하기 */
	if(!regex.isValue(admin_id)){
		web.redirect(null, "아이디를 입력하세요");
		return;
	}
	
	if(!regex.isEngNum(admin_id)){
		web.redirect(null, "아이디는 영문, 숫자만 입력 가능합니다.");
		return;
	}
	
	//글자 수 검사
	int user_id_len = admin_id.length();
	if(user_id_len < 4 || user_id_len > 20){
		web.redirect(null, "아이디는 4~20자 이내로 입력.");
		return;
	}
	
	/* 비밀번호 검사하기 */
	if(!regex.isValue(admin_pw)){
		web.redirect(null, "비번입력");
		return;
	}
	if(!regex.isEngNum(admin_pw)){
		web.redirect(null, "비번은 영문, 숫자만");
		return;
	}
	//글자 수 검사
	int user_pw_len = admin_pw.length();
	if(user_pw_len < 4 || user_pw_len > 20){
		web.redirect(null, "비번은 4~20자");
		return;
	}
	
	/* 결과 처리 */
	web.redirect("../AdminMainPage.jsp","환영합니다.");

%>