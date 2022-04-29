<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html lang="ru">

		<head>
			<meta charset="UTF-8">
			<link href="main.css" rel="stylesheet" type="text/css">
			<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
			<meta name="viewport" content="width=device-width, initial-scale=1" />
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
			<title>Создание аккаунта в системе - Киберстрахование!</title>
		</head>

		<body>
			<div class="main">
				<p class="sign" align="center">Создание аккаунта в системе</p>

				<form action="Create" method="POST">

					<br><input type="text" class="un" id="name" name="name" placeholder="ФИО" required />
					<input type="text" class="un" id="address" name="address" placeholder="Адрес" required />
					<input type="text" class="un" id="mobileNo" name="mobileNo" placeholder="Телефон" required />
					<input type="email" class="un" id="email" name="email" placeholder="Email" required />
					<input type="password" class="un" id="password" name="password" placeholder="Пароль"
						required />
					<input type="password" class="un" id="cpassword" name="confirm-password"
						placeholder="Подтверждение пароля" required />

					<div class="flex-super">
					<button type="submit" class="submit">Создать</button>
					</div>
				</form>
				<br><br>
				<div class="flex-super">
					<input type="button" class="submit" onclick="window.location='login.jsp'" id="myButton" value="Вход">
				</div>
			</div>
			<font color="red">
				<c:if test="${param.status == false}">
					<c:out value="Уже зарегистрирован" />
				</c:if>
			</font>
			<font color="green">
				<c:if test="${param.status}">
					<c:out value="Успешная регистрация" />
				</c:if>
			</font>
		</body>

		</html>