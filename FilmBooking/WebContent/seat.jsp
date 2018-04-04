<%@page import="Filmbooking.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:useBean id="seat_list" scope="application"
	class="Filmbooking.seatBean" />
<jsp:setProperty property="*" name="seat_list" />
<title>예매</title>
</head>
<body>
	<div align="center">
		<h3>영화 예매</h3>
		[<a href=film_list.jsp>메인 화면으로</a>]
		<hr>
		<table border="1">
			<tr>
				<td width=50>좌석 번호</td>
				<td width=100>좌석 현황</td>
				<td width=50>예매</td>
			</tr>
			<%
				int i = 1;
				if (session.getAttribute("select")== null)
				{	response.sendRedirect("film_list.jsp");
				return;
				}
				seat chair = seat_list.getChair(Integer.parseInt(session.getAttribute("select").toString()));
				for (boolean state : chair.getS()) {
			%>
			<tr>
				<td><%=i++%></td>

				<td>
					<%
						if (state)
								out.print("예매 불가");
							else
								out.print("예매 가능");
					%>
				</td>
				<td>
					<%
						if (!state) {
					%>
					<form method="post" action="control.jsp">
						<input type="submit" value="예매" /> <input type="hidden"
							name="action" value="resv" /> <input type="hidden" name="oper"
							value="add" /> <input type="hidden" name="number"
							value="<%=i - 2%>" />
					</form> <%
 	} else {
 			out.print("-");
 		}
 %>
				</td>
			</tr>
			<%
				}
			%>

		</table>
	</div>
</body>
</html>