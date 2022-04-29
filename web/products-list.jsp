<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<%@ page import="products.model.Products"%>
<!DOCTYPE html>
<%
List<Products> productLists = (List<Products>) request.getAttribute("productLists");
%>
<html lang="ru">
<head>
<meta charset="UTF-8">
<title>Списоб объектов страхования - Киберстрахование!</title>
<script>
	function confirmGo(m, u) {
		if (confirm(m)) {
			window.location = u;
		}
	}
</script>
<link href="main.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Ubuntu"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

</head>

<body>
	<h3>Списоб объектов страхования</h3>
	<hr size="3" color="gray" />
	<div style="text-align: center;">
		<font color="red"> <c:if test="${param.status == false}">
				<c:out value="Ошибка удаление" />
			</c:if>
		</font> <font color="green"> <c:if test="${param.status}">
				<c:out value="Успешное удаление" />
			</c:if>
		</font>
	</div>

	<c:choose>
		<c:when test="${productLists.size() == 0}">
			<h3 align="center">
				<c:out value="Отсутствуют объекты страхования" />
			</h3>
		</c:when>
		<c:when test="${productLists.size() > 0}">
		   <form method="POST" action="Products">
			 <input style="background-color: aliceblue;" value="${param.search}" type="text" name="search" class="un" placeholder="Поиск по названию или серийному номеру..." autocomplete="off"/>
			 <i class="fa fa-search" style="font-size: 20px;position: relative;left:-20%"></i>
			</form>
			<table>
				<tr>
					<th>ID</th>
					<th>Название</th>
					<th>Тип</th>
					<th>Серийный номер</th>
					<th>Стоимость</th>
					<th><i class="fa fa-bars" style="font-size: 25px"></i></th>
				</tr>
				<c:forEach items="${productLists}" var="product">
					<tr>
						<td><c:out value="${product.id}" /></td>
						<td><c:out value="${product.name}" /></td>
						<td><c:out value="${product.type}" /></td>
						<td><c:out value="${product.serial_no}" /></td>
						<td><c:out value="${product.price}" /></td>
						<td><a
							href="javascript:confirmGo('Вы уверены, что хотите удалить объект страхования?','DeleteProduct?id=<c:out value="
														${product.id}" />')"><i
								class="fa fa-trash" style="font-size: 20px"></i></a></td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
	</c:choose>
	<br>
	<br>
	<button style="margin-left: unset;" class="submit"
		onclick="window.location='Home'" id="myButton">На главную</button>
</body>

</html>