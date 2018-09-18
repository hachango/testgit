<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head> 
<%@ include file="main/inc/common.jsp" %>
	<style type="text/css">
		body {
			padding-top: 50px;
			padding-bottom: 20px;
		}
	</style>
</head>
<body>
	<div class="container row-box">
		<form class="find_id col-md-6" name="find_id" id="find_id" role="form" method="post" style="padding:40px 50px;" action="BasicUI/findId_exception.jsp">
			<h1>Find ID</h1>
			<div class="form-group">
   	           <label for="user_name">UserName</label>
   	           <input type="text" class="form-control" id="user_name" name="user_name" placeholder="이름 입력하세요." maxlength="20">
  	      	</div>
  	     	<div class="form-group">
  	            <label for="user_tel">UserTel</label>
  	            <input type="text" class="form-control" id="user_tel" name="user_tel" placeholder="폰번호를 입력하세요.(-생략)" maxlength="20">
  		  	</div>
 			<button type="submit" class="btn btn-success btn-block">FIND</button>
  	  	</form>
    
		<form class="find_pw col-md-6" name="find_pw" id="find_ipw" role="form" method="post" style="padding:40px 50px;" action="BasicUI/findPw_exception.jsp">
			<h1>Find Password</h1>
			<div class="form-group">
           	   <label for="user_name">UserName</label>
         	   <input type="tel" class="form-control" id="user_name" name="user_name" placeholder="이름 입력하세요." maxlength="20">
      		</div>
        	<div class="form-group">
              <label for="user_email">email</label>
              <input type="email" class="form-control" id="user_email" name="user_email" placeholder="이메일 주소를 입력하세요." maxlength="30">
    		</div>
    		<button type="submit" class="btn btn-success btn-block">FIND</button>
		</form>
	</div>
	<%@ include file="main/inc/footer.jsp" %>
</body>
</html>