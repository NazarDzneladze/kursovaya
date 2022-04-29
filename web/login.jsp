<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ru">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="main.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Ubuntu"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	<title>Вход в систему - Киберстрахование!</title>
</head>

<body>
	<div class="main">
		<p class="sign" align="center">Вход в систему</p>
		<div style="text-align: center;">
			<font color="red"> <c:if
					test="${param.authenticated == false}">
					<c:out value="Неверные данные" />
				</c:if>
			</font> <font color="green"> <c:if test="${param.authenticated}">
					<c:out value="Верные данные" />
				</c:if>
			</font>
		</div>
		<form action="Login" method="post" class="form1">
			<input type="text" name="email" value="${param.email}" class="un"
				placeholder="Введите email" />
			<input type="password" name="password"
				class="pass" value="${param.password}" placeholder="Введите пароль" />
			<div class="flex-super">
				<input type="submit" class="submit" value="Войти" />
			</div>
		</form>
		<br><br>
		<div class="flex-super">
			<input type="button" class="submit" onclick="window.location='create-account.jsp'" id="myButton" value="Регистрация">
		</div>
	</div>



</body>

</html>