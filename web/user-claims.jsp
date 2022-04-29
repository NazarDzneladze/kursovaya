<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<%@ page import="claims.model.Claims"%>
<!DOCTYPE html>
<%
	int index = 0;
%>
<html lang="ru">
<head>
	<link href="main.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<meta charset="UTF-8">
<title>Выши иски - Киберстрахование!</title>
<script>
function confirmGo(m, u) {
	if (confirm(m)) {
		window.location = u;
	}
}
</script>
</head>
<body>
	<h3>Your Claims</h3>
	<hr size="3" color="gray" />
	<div style="text-align: center;">
		<font color="red"> <c:if test="${param.status == false}">
				<c:out value="Не удалось отменить иск" />
			</c:if>
		</font> <font color="green"> <c:if test="${param.status}">
				<c:out value="Иск отменен успешно" />
			</c:if>
		</font>
	</div>
	<c:choose>
		<c:when test="${claims_list.size() == 0}">
			<h3 align="center">
				<c:out value="У вас нет запросов" />
			</h3>
		</c:when>
		<c:when test="${claims_list.size() > 0}">
			<table>
				<tr>
					<th>Серийный номер</th>
					<th>Название</th>
					<th>Категория</th>
					<th>Описание</th>
					<th>Статус иска</th>
					<th>Дата последнего обновления</th>
					<th><i class="fa fa-bars" style="font-size:25px"></i></th>
				</tr>
				<c:forEach items="${claims_list}" var="item">
					<tr>
						<td><%=++index%></td>
						<td><c:out value="${item.productName}" /></td>
						<td><c:out value="${item.category}" /></td>
						<td><c:out value="${item.description}" /></td>
						<td><c:out value="${item.claimStatus ? 'Одобрен' : 'В ожидании'}" /></td>
						<td><c:out value="${item.lastModifiedDate}" /></td>
						<td><a href="javascript:confirmGo('Вы хотите отменить текущую заявку?','DeleteClaim?id=<c:out value="
														${item.id}" />')"><font style="font-weight:bold;text-decoration:underline;color:blue;">Отменить иск</font></a></td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
	</c:choose>
	<br><br>
	<button style="margin-left:unset;" class="submit" onclick="window.location='Home'" id="myButton">На главную</button>
</body>
</html>