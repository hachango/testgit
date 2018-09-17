<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!-- 공지사항 검색창 -->
<div class="row box">
      				<form>
      				<div class="form-group col-md-2">
						<label for="select1" class="control-label"></label>
						<select class="form-control" id="select1">
							<option>제목</option>
							<option>내용</option>
						</select>
					</div>
					<div class="form-group col-md-8">
   	        		   <label for="search"></label>
   	        		   <input type="search" class="form-control" id="search" name="search" placeholder="내용을 입력해주세요" maxlength="20">
  	      			</div>
  	      			<br />
  	      			<div>
      				<button type="submit" class="btn btn-primary">검색</button><button type="reset" class="btn btn-default">초기화</button>
      				</div>
      				</form>
</div>
<!--//공지사항 검색창 -->
      			
<!-- 공지사항 table -->
<div class="container col-md-11">
	<div class="table-responsive">
		<table class="table table-striped table-bordered table-hover">
			<thead>
				<tr>
					<th class="text-center"><input type="checkbox" /></th>
					<th class="text-center">#</th>
					<th class="text-center">제목</th>
					<th class="text-center">작성일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="text-center"><input type="checkbox" /></td>
					<td class="text-center">1</td>
					<td class="text-center">공지사항입니다.</td>
					<td class="text-center">201x.xx.xx</td>
				</tr>
				<tr>
					<td class="text-center"><input type="checkbox" /></td>
					<td class="text-center">2</td>
					<td class="text-center">공지사항입니다.</td>
					<td class="text-center">201x.xx.xx</td>
				</tr>
				<tr>
					<td class="text-center"><input type="checkbox" /></td>
					<td class="text-center">3</td>
					<td class="text-center">공지사항입니다.</td>
					<td class="text-center">201x.xx.xx</td>
				</tr>
				<tr>
					<td class="text-center"><input type="checkbox" /></td>
					<td class="text-center">4</td>
					<td class="text-center">공지사항입니다.</td>
					<td class="text-center">201x.xx.xx</td>
				</tr>
				<tr>
					<td class="text-center"><input type="checkbox" /></td>
					<td class="text-center">5</td>
					<td class="text-center">공지사항입니다.</td>
					<td class="text-center">201x.xx.xx</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<br />
<!--//공지사항 table -->
      			
<!-- 공지사항 하단 -->
<div class="row box col-md-12">
	<div class="pull-left">
		<button class="btn btn-danger">공지등록</button><button class="btn btn-info">삭제하기</button>
    </div>
    <div class="col-md-offset-4">
      	<ul class="pagination">			 
			<li class="disabled"><a href="#">&laquo;</a></li>
			<!-- 활성화 버튼은 아래의 구조로 구성하시면 됩니다. sr-only는 스크린리더 전용 입니다 .-->
			<li class="active"><span>1 <span class="sr-only">(current)</span></span></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">&raquo;</a></li>
		</ul>
	</div>
</div>
<!--//공지사항 하단 -->