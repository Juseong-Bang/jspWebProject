<%@page import="Filmbooking.filmBean"%>
<%@page import="Filmbooking.film"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 추가</title>
</head>
<hr>
<body>
	<div align="center">
		<h3>영화 추가</h3>
		<form name=form1 method=post action=control.jsp>
			<input type=hidden name="film" value="insert" />
			<input type="hidden" name="action" value="film"/>
			<table border="1">
				<tr>
					<td>타이틀</td>
					<td><input type="text" size=20 name=film_name /></td>
				</tr>
				<tr>
					<td>나이</td>
					<td><input type="text" size=20 name=age_phase /></td>
				</tr>
				<tr>
					<td>좌석수</td>
					<td><input type="text" size=20 name=seat_num /></td>
				</tr>
				<tr>
					<td>날짜</td>
					<td><input type="text" size=20 name=date /></td>
				</tr>
				<tr>
					<td colspan=2 align=center><input type="submit" value=추가>
						<input type="reset" value=초기화></td>
				</tr>
			</table>
		</form>

	</div>
</body>
</html>