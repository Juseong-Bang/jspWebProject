<%@page import="Filmbooking.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.catalina.connector.Request"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="film_list" scope="application"
	class="Filmbooking.filmBean" />
<jsp:useBean id="seat_list" scope="application"
	class="Filmbooking.seatBean" />
<jsp:useBean id="person" scope="session" class="Filmbooking.member" />
<jsp:setProperty property="*" name="film_list" />
<jsp:useBean id="resv_list" scope="application"
	class="Filmbooking.resvBean" />
<jsp:setProperty property="*" name="resv_list" />


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 상영 리스트</title>
</head>
<body>
	<div align="center">
		<h3>현재 상영 리스트</h3>
		<hr>
		<%
			if (person.getName_mem() != null) {
		%>
		[<a href=change.jsp>회원 정보 변경(<%=person.getName_mem()%>)
		</a>] [<a href="control.jsp?action=member&member=logout">로그아웃 </a>]
		<%
			} else {
		%>[<a href=login.jsp>로그인</a>]
		<%
			}
		%>
		<table border="1">
			<tr>
				<td width=100>타이틀</td>
				<td width=100>관람가</td>
				<td width=100>총 좌석수</td>
				<td width=100>상영기간</td>
				<td width=100>예매</td>
			</tr>
			<%
				for (film movie : (ArrayList<film>) film_list.getDBList()) {
					if ((person.getName_mem() != null) && movie.getAge_phase() > person.getAge_mem())
						continue;
			%>
			<tr>
				<td width=100><%=movie.getFilm_name()%></td>
				<td width=100><%=movie.getAge_phase() + "세 이용가"%></td>
				<td width=100><%=movie.getSeat_num() + "석"%></td>
				<td width=100><%=movie.getDate()%></td>
				<td>
					<form method="post" action="control.jsp">
						<input type="hidden" name="member" value="main" /> <input
							type="hidden" name="action" value="member" /> <input
							type="submit" value="선택"> <input type="hidden"
							name="select" value=<%=movie.getId_film()%> />
					</form>
				</td>
			</tr>
			<%
				}
			%>

		</table>
	</div>
</body>
</html>