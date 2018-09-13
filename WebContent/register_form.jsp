<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head>
<%@ include file="BasicUI/common.jsp" %>
		<style type="text/css">
      h1{
        text-align: center;
      }

			body {
				padding-top: 50px;
				padding-bottom: 20px;
			}

			.input-group{
				width: 400px;
			}

			.carousel {
				height: 500px;
				margin-bottom: 60px;
			}

			.carousel-inner > .item > img {
				min-width: 100%;
				height: 500px;
			}


			/** 캐러셀의 반응형 기능 */
			@media (min-width: 768px) {
				.carousel-caption p {
					margin-bottom: 20px;
					font-size: 21px;
					line-height: 1.4;
				}
			}
			.thumbnail { height: 350px; }
		</style>
	</head>
<body>


<div class="container">
    <div class="page-header">
        <h1>회원가입</h1>
    </div>

    <form class="form-horizontal">
      <div class="form-group">
        <label class="col-sm-3 control-label" for="user_id">아이디</label>
        <div class="col-sm-6">
          <input class="form-control" id="user_id" type="text" placeholder="영문+숫자로 4자 이상 입력.">
        </div>
      </div>
    <div class="form-group">
      <label class="col-sm-3 control-label" for="user_pw">비밀번호</label>
    <div class="col-sm-6">
      <input class="form-control" id="user_pw" type="password" placeholder="영문+숫자로 6자 이상 입력.">
    <!-- <p class="help-block">숫자, 특수문자 포함 8자 이상</p> -->
    </div>
    </div>
      <div class="form-group">
          <label class="col-sm-3 control-label" for="user_pw_re">비밀번호 확인</label>
         <div class="col-sm-6">
          <input class="form-control" id="user_pw_re" type="password" placeholder="비밀번호 확인">
            <!-- <p class="help-block">비밀번호를 한번 더 입력해주세요.</p> -->
         </div>
      </div>
    <div class="form-group">
        <label class="col-sm-3 control-label" for="user_name">이름</label>
      <div class="col-sm-6">
        <input class="form-control" id="user_name" type="text" placeholder="이름을 입력하세요.">
      </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label" for="user_tel">휴대폰번호</label>
          <div class="col-sm-6">
            <!-- <div class="input-group"> -->
              <input type="tel" class="form-control" id="user_tel" placeholder="- 없이 입력해 주세요." />
            <!-- </div> -->
          </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label" for="user_birthdate">생년월일</label>
        <div class="col-sm-6">
         <input class="form-control" id="user_birthdate" type="text" placeholder="생년월일을 입력하세요.">
         </div>
      </div>
    <div class="form-group">
        <label class="col-sm-3 control-label" for="user_email">이메일</label>
        <div class="col-sm-6">
         <input class="form-control" id="user_email" type="email" placeholder="이메일 입력하세요.">
         </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label" for="gender">성별</label>
        <div class="col-sm-6">
          <label><input type="checkbox" id="woman" class="form-control">여자</label>
          <label><input type="checkbox" id="man" class="form-control">남자</label>
        </div>
    </div>


      <div class="form-group">
          <label class="col-sm-3 control-label" for="inputAgree">약관 동의</label>
        <div class="col-sm-6" data-toggle="buttons">
          <label class="btn btn-warning active">
            <input id="agree" type="checkbox" autocomplete="off" chacked>
              <span class="fa fa-check"></span>
          </label>
          <a href="#">이용약관</a> 에 동의 합니다.
        </div>
      </div>
    <div class="form-group">
      <div class="col-sm-12 text-center">
        <button class="btn btn-primary" type="submit">회원가입<i class="fa fa-check spaceLeft"></i></button>
        <button class="btn btn-danger" type="submit">가입취소<i class="fa fa-times spaceLeft"></i></button>
      </div>
    </div>
    </form>

</div>
		<!-- Javascript -->
		<script src="assets/js/jquery-1.10.2.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
	</body>
</html>