<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<%@include file="../include/header.jsp"%>

<form role="form" action="modifyPage" method="post">
	<input type='hidden' name='page' value="${cri.page}">
	<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
</form>

<div class="box-body">
	<div class="form-group">
		<label for="exampleInputEmail1">BNO</label> <input type="text"
			name='bno' class="form-control" value="${boardVO.bno}"
			readonly="readonly">
	</div>

</div>
<!-- /.box-body -->

<%@include file="../include/footer.jsp"%>

<script>
$(document).ready(function(){
	var formObj = $("form[role='form']");
	console.log(formObj);
	$(".btn-warning").on("click", function(){
		self.location="/board/listPage?page=${cri.page}&perPageNum=${cri.perPageNum}"
	})
	
	$(".btn-primary").on("click", function(){
		formObj.submit();
	})
})

</script>

