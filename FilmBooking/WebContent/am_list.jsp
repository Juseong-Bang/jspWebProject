<%@page import="java.util.ArrayList"%>
<%@page import="Filmbooking.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:useBean id="member_list" scope="application"
	class="Filmbooking.memberBean" />
</head>
<title>회원 관리</title>
</head>
<body>
	<div align="center">
		<h3>현재 회원 리스트</h3>
		<hr>
		[<a href=af_list.jsp>뒤로</a>][<a href=film_list.jsp>메인 화면으로</a>]
		<table border="1">
			<tr>
				<td width=100>ID</td>
				<td width=100>나이</td>
				<td width=100>등록 날짜</td>
				<td width=100>동작</td>
			</tr>
			<%
				for (member person : (ArrayList<member>) member_list.getDBList()) {
			%>
			<tr>
				<td width=100><%=person.getName_mem()%></td>
				<td width=100><%=person.getAge_mem()%></td>
				<td width=100><%=person.getRegister_date()%></td>
				<td width=100><a
					href="control.jsp?action=member&member=remove&rm_Id=<%=person.getId_mem()%>">remove
				</a></td>
			</tr>
			<%
				}
			%>

		</table>
	</div>
</body>
</html>