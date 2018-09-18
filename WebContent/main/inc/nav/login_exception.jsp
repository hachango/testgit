<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="study.jsp.helper.WebHelper"%>
<%@ page import="study.jsp.helper.RegexHelper"%>
<%
	/* 헬퍼 객체 작성 */
	WebHelper web = WebHelper.getInstance(request, response);
	RegexHelper regex = RegexHelper.getInstance();
	
	/* 파라미터 받기 */
	String user_id = web.getString("user_id");
	String user_pw = web.getString("user_pw");
	
	/* 아이디 값 검사하기 */
	if(!regex.isValue(user_id)){
		web.redirect(null, "아이디를 입력하세요");
		return;
	}
	
	if(!regex.isEngNum(user_id)){
		web.redirect(null, "아이디는 영문, 숫자만 입력 가능합니다.");
		return;
	}
	
	//글자 수 검사
	int user_id_len = user_id.length();
	if(user_id_len < 4 || user_id_len > 20){
		web.redirect(null, "아이디는 4~20자 이내로 입력해야해요.");
		return;
	}
	
	/* 비밀번호 검사하기 */
	if(!regex.isValue(user_pw)){
		web.redirect(null, "비밀번호 입력하세요.");
		return;
	}
	if(!regex.isEngNum(user_pw)){
		web.redirect(null, "비번은 영문, 숫자조합만 가능합니다.");
		return;
	}
	//글자 수 검사
	int user_pw_len = user_pw.length();
	if(user_pw_len < 4 || user_pw_len > 20){
		web.redirect(null, "비번은 4~20자");
		return;
	}
	/* 결과 처리 */
	web.redirect("../../../MyPage.jsp","로그인 되었습니다.");
//	web.redirect("D:/jsp/workspace/TeamProject/WebContent/MainPage.jsp", null);
%>