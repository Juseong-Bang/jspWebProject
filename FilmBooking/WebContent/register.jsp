<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<hr>
<body>
	<div align="center">
		<h3>회원가입</h3>
		[<a href=film_list.jsp>메인 화면으로</a>]
		<form name=form1 method=post action=control.jsp>
			<input type=hidden name="member" value="regist"/> 
			<input type="hidden" name="action" value="member" />
			<table border="1">
				<tr>
					<td>ID</td>
					<td><input type="text" size=10 name=name_mem /></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" size=10 name=password1 /></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="password" size=10 name=password2 /></td>
				</tr>
				<tr>
					<td>나이</td>
					<td><input type="text" size=10 name=age_mem /></td>
				</tr>
				<tr>
					<td colspan=3 align=center><input type="submit" value=승인>
						<input type="submit" value=초기화></td>
				</tr>
			</table>
		</form>

	</div>
</body>
</html>

