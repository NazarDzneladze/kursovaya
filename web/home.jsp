<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ru">
<head>
	<link href="main.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<meta charset="UTF-8">
	<title>Главная - Киберстрахование!</title>
</head>
<body>
	<h2>Приветствую! ${cookie.user.value}</h2>
	<br>
	<h3>Доступные действия</h3>
	<ul type="disc">
	 <li><a href="registration.jsp">Регистрация обхекта страхования</a></li>
	 <li><a href="RegistrationsList">Просмотр зарегистрированных объектов страхования</a></li>
	 <li><a href="ClaimsList">Просмотр исков</a></li>
	 <li><a href="Logout">Выйти</a></li>
	</ul>
</body>
</html>