<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="study.jsp.helper.WebHelper"%>
<%@ page import="study.jsp.helper.RegexHelper"%>
<%
	/* 헬퍼 객체 작성 */
	WebHelper web = WebHelper.getInstance(request, response);
	RegexHelper regex = RegexHelper.getInstance();
	
	/* 파라미터 받기 */
	String user_name = web.getString("user_name");
	String user_email = web.getString("user_email");
	
	/* 이름 값 검사 */
	if(!regex.isValue(user_name)){
		web.redirect(null, "이름을 입력하세요");
		return;
	}
	
	if(!regex.isKor(user_name)){
		web.redirect(null, "한글만");
		return;
	}
	
	int user_name_len = user_name.length();
	if(user_name_len > 10){
		web.redirect(null, "이름은 10자 이내로");
		return;
	}
	
	/* 이메일 검사 */
	if(!regex.isValue(user_email)){
		web.redirect(null, "이메일을 입력");
		return;
	}
	
	if(!regex.isEmail(user_email)){
		web.redirect(null, "이메일 형식이 잘못됨");
		return;
	}
	
	/* 결과 처리 */
	web.redirect("../MainPage.jsp","임시비밀번호를 이메일로 발송해드렸습니다.");
//	web.redirect("D:/jsp/workspace/TeamProject/WebContent/MainPage.jsp", null);
%>