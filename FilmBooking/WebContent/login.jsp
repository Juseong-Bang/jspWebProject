<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<hr>
<body>
	<div align="center">
		<h3>로그인</h3>
		[<a href=film_list.jsp>메인 화면으로</a>]
		<form name=form1 method=post action=control.jsp>
			<input type=hidden name="member" value="login" /> <input
				type="hidden" name="action" value="member" />
			<table border="1">
				<tr>
					<td>ID</td>
					<td><input type="text" size=10 name=name_mem /></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" size=10 name=password /></td>
				</tr>
			</table>
			<input type="submit" value=로그인>
		</form>
		<input type="reset" value=초기화>
		<form method="post" action="register.jsp">
			<input type="submit" value="회원 가입 으로">
		</form>
	</div>
</body>
</html>