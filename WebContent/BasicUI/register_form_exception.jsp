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
	String user_pw_re = web.getString("user_pw_re");
	String user_name = web.getString("user_name");
	String user_tel = web.getString("user_tel");
	String user_birthdate = web.getString("user_birthdate");
	String email = web.getString("user_email");
	String gender = web.getString("user_gender");
	
	
	
	
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
		web.redirect(null, "아이디는 4~20자 이내로 입력.");
		return;
	}
	
	/* 비밀번호 검사하기 */
	if(!regex.isValue(user_pw)){
		web.redirect(null, "비번입력");
		return;
	}
	if(!regex.isEngNum(user_pw)){
		web.redirect(null, "비번은 영문, 숫자만");
		return;
	}
	//글자 수 검사
	int user_pw_len = user_pw.length();
	if(user_pw_len < 4 || user_pw_len > 20){
		web.redirect(null, "비번은 4~20자");
		return;
	}
	
	/* 비밀번호 확인 값 검사 */
	if(!user_pw.equals(user_pw_re)){
		web.redirect(null, "비번확인이 잘못됨");
		return;
	}
	
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
		web.redirect(null, "비번은 10자 이내로");
		return;
	}
	
	/* 휴대폰 검사 */
	if(!regex.isValue(user_tel)){
		if(!regex.isCellPhone(user_tel)){
			web.redirect(null, "연락처가 핸드폰 형식이 아님");
			return;
		}
	}
	
	/* 생년월일 */
	if(!regex.isValue(user_birthdate)){
		web.redirect(null, "생년월일을 입력하세요");
		return;
	}
	if(!regex.isBirthDate(user_birthdate)){
		web.redirect(null, "생년월일 형식이 맞지 않습니다");
	}
	
	/* 이메일 검사 */
	if(!regex.isValue(email)){
		web.redirect(null, "이메일을 입력");
		return;
	}
	
	if(!regex.isEmail(email)){
		web.redirect(null, "이메일 형식이 잘못됨");
		return;
	}
	

	/* 결과 처리 */
	web.redirect("join_result.jsp", null);
//	web.redirect("D:/jsp/workspace/TeamProject/WebContent/MainPage.jsp", null);
%>