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
		<h3>게시물 수정</h3>
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
				<th colspan="2"><button onclick="update()">수정</button></th>
			</tr>
		</table>
	</div>
	<script>
	function update(){
		var param="{}";
		
	}
		function ajax(conf) {
			var xhr = new XMLHttpRequest();
			xhr.open(conf.method, conf.url);

			if (conf.method = 'GET') {
				xhr.setRequestHeader('Content-Type', 'application/json');
			}
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4) {
					if (xhr.status == 200) {
						conf.callback(xhr.responseText);
					}
				}
			}
			var param = (conf.param) ? conf.param : '';
			xhr.send(param);
		}

		var conf = {
			method : 'GET',
			url : '/ajax/board/view?cmd=view&biNum=${param.biNum}',
			callback : function(res) {
				var board = JSON.parse(res);
				console.log(board);
				var inputs = document.querySelectorAll('[id]');
				for ( var idx in inputs) {
					var input = inputs[idx];
					console.log(input.id);
					if (input.id) {
						input.value = board[input.id];
					}
				}
			}
		}
		ajax(conf);
	</script>
</body>
</html>