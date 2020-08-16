<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
		<form method ="post" action="writeAction.jsp">
		
			<table class="table table-striped" style="text-align:center; border: 1px solid #dddddd">
			<thead>
				<tr>
					<th colspan="2" style="background-color : #aaaaaa; text-align: center;">Comment form</th>
					
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><textarea class="from-control" placeholder="content" name="bbsContent" maxlength="2048" style="height: 350px"></textarea></td>
				</tr>
			</tbody>
			
			</table>
			<input type="submit" class="btn btn-primary pull-right" value="댓글쓰기">
			</form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
</body>
</html>
</body>
</html>
</body>
</html>