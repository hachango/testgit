<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
	
<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4>공지사항 등록하기</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form class="form-horizontal" role="form">
          	<!-- 글 제목 -->
			<div class="form-group">
				<label for="subject" class="col-md-2 control-label">글 제목</label>
				<div class="col-md-10">
					<input type="text" class="form-control" id="subject" placeholder="제목을 입력하세요.">
				</div>
			</div>
			<!--// 글 제목 -->
					
			<!-- 내용 -->
			<div class="form-group">
				<label for="content" class="col-md-2 control-label">내용</label>
				<div class="col-md-10">
					<textarea id="content" class="form-control" rows="5" placeholder="내용을 입력하세요."></textarea>
				</div>
			</div>
			<!--// 내용 -->
			<div class="form-group">
				<label for="file" class="col-md-2 control-label">첨부파일</label>
				<input type="file" name="file" id="file" class="form-control" multiple/>
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-info">파일추가</button>
				<button type="reset" class="btn btn-primary">파일삭제</button>
			</div>
			</form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default">등록완료</button>
          <button class="btn btn-info btn-default" data-dismiss="modal">취소</button>
        </div>
      </div>
	</div>
</div>