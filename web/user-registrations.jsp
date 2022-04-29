<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<%@ page import="registration.model.Registrations"%>
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
<title>Ваши регистрации объектов страхования - Киберстрахование!</title>
<script>
function confirmGo(m, u) {
	if (confirm(m)) {
		window.location = u;
	}
}
</script>
</head>
<body>
	<h3>Ваши регистрации объектов страхования</h3>
	<hr size="3" color="gray" />
	<c:choose>
		<c:when test="${registrations.size() == 0}">
			<h3 align="center">
				<c:out value="У вас нет объектов страхования" />
			</h3>
		</c:when>
		<c:when test="${registrations.size() >= 0}">
			<table>
				<tr>
					<th>Серийный номер</th>
					<th>Название</th>
					<th>Дата приобритения</th>
					<th>Дата регистрации</th>
					<th>Тип объекта регистрации</th>
					<th><i class="fa fa-bars" style="font-size:25px"></i></th>
				</tr>
				<c:forEach items="${registrations}" var="item">
					<tr>
						<td><%=++index%></td>
						<td><c:out value="${item.getName()}" /></td>
						<td><c:out value="${item.purchaseDate}" /></td>
						<td><c:out value="${item.registrationDate}" /></td>
						<td><c:out value="${item.productType}" /></td>
						<td><a href="javascript:confirmGo('Вы хотите подать иск?','ClaimRequest?id=<c:out value="
														${item.id}" />')"><font style="font-weight:bold;text-decoration:underline;color:blue;">Иск</font></a></td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
	</c:choose>
	<br><br>
	<button style="margin-left:unset;" class="submit" onclick="window.location='Home'" id="myButton">На главную</button>
</body>
</html>