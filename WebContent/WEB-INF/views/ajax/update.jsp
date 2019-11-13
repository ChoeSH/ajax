<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/head.jsp"></jsp:include>
</head>
<body>
	<div class="container">
		<h3>게시물 작성</h3>
		<table class="table table-bordered">
			<tr>
				<th>제목</th>
				<td><input type="text" id="biTitle" placeholder="제목을 작성해주세요"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea id="biContent" rows="10" cols="50"></textarea></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="number" id="uiNum" value="3"></td>
			</tr>
			<tr>
				<th colspan="2"><button onclick="init()">저장</button></th>
			</tr>
		</table>
	</div>

	<script>


var conf = {
		method:'GET',
		url:'/ajax/board/view?cmd=view&biNum=${param.biNum}',
				callback:function(res){
					console.log(res);
				}
}

ajax(conf);

</script>
</body>
</html>