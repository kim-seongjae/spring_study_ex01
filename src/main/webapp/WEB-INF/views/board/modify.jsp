<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<%@include file="../include/header.jsp"%>


<form role="form" method="post">
	<div class="box-body">
		<div class="form-group">
			<label for="exampleInputEmail1">BNO</label> <input type="text"
				name='bno' class="form-control" value="${boardVO.bno}"
				readonly="readonly">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Title</label> <input type="text"
				name='title' class="form-control" value="${boardVO.title}"
				readonly="readonly">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Content</label>
			<textarea class="form-control1" name="content" rows="3"
				readonly="readonly"> ${boardVO.content} </textarea>
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Writer</label> <input type="text"
				name='writer' class="form-control" value="${boardVO.writer}"
				readonly="readonly">
		</div>
	</div>
	<!-- /.box-body -->
</form>


<dlv class="box-footer">
	<button type="submit" class="btn btn-primary">SAVE</button>
	<button type="submit" class="btn btn-warning">CANCEL</button>
</dlv>



<%@include file="../include/footer.jsp"%>


<script>
$(document).ready(function() {
	
	var formObj = $("form[role='form']");

	console.log(formObj);

	$(".btn-warning").on("click", function() {
		self.location = "/board/listAll";
		formObj.submit();
	});
	$(".btn-primary").on("click", function() {
		formObj.submit();
	});
});
</script>




