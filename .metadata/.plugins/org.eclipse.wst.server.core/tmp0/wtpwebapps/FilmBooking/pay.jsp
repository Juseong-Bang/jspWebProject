<%@page import="Filmbooking.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:useBean id="resv_list" scope="application"
	class="Filmbooking.resvBean" />
<jsp:useBean id="person" scope="session" class="Filmbooking.member" />
<title>예매 내역</title>
</head>
<body>
	<div align="center">
		<h3>예매 내역</h3>
		<hr>
		[<a href=film_list.jsp>메인 화면으로</a>]
		<table border="1">
			<tr>
				<td width=200 align="center">영화 제목</td>
				<td width=150 align="center">상영 기간</td>
				<td width=70 align="center">예약일</td>
				<td width=80 align="center">좌석 번호</td>
				<td width=100 align="center">예약 상황</td>
				<td width=150 align="center">결제 및 취소</td>
			</tr>
			<%
				int id = person.getId_mem();
				for (resv book : resv_list.getDBList()) {
					if (book.getId_mem() == id) {
			%>
			<tr>
				<td width=200 align="center"><%=book.getFilm_name()%></td>
				<td width=150 align="center"><%=book.getDate()%></td>
				<td width=70 align="center"><%=book.getResv_date()%></td>
				<td width=100 align="center"><%=book.getSeat_no() + 1%></td>
				<td width=50 align="center">
					<%
						if (!book.isStatus())
									out.print("-");
								else
									out.print("결재 완료");
					%>
				</td>

				<td colspan=2 align="center" width=150>
					<%
						if (!book.isStatus()) {
					%>
					<form method="post" action="card.jsp">
						<input type="submit" value="결재" /> <input type="hidden"
							name="rid" value=<%=book.getId_resv()%> />
					</form> <%
 	}
 %>
					<form method="post" action="control.jsp">
						<input type="submit" value="얘매내역 삭제" /> <input type="hidden"
							name="action" value="resv" /> <input type="hidden" name="oper"
							value="cancel" /> <input type="hidden" name="rid"
							value=<%=book.getId_resv()%> />
					</form>
				</td>
			</tr>
			<%
				}
				}
			%>

		</table>

	</div>
</body>
</html>