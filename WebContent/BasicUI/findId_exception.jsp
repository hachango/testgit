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
	String user_tel = web.getString("user_tel");
	
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
	
	/* 휴대폰 검사 */
	if(!regex.isValue(user_tel)){
		if(!regex.isCellPhone(user_tel)){
			web.redirect(null, "연락처가 핸드폰 형식이 아님");
			return;
		}
	}
	
	/* 결과 처리 */
	web.redirect("../MainPage.jsp","고객님의 아이디는 #입니다.");
//	web.redirect("D:/jsp/workspace/TeamProject/WebContent/MainPage.jsp", null);
%>