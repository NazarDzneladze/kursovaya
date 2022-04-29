<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <link href="main.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <title>Создание объекта страхования - Киберстрахование!</title>

</head>

<body>
<div class="main">
    <p class="sign" align="center">Создание объекта страхования</p>
    <div style="text-align: center;">
        <font color="red">
            <c:if test="${param.status == false}">
                <c:out value="Не удалось создать/Объект страхования уже зарегистрирован"/>
            </c:if>
        </font>
        <font color="green">
            <c:if test="${param.status}">
                <c:out value="Объект страхования успешно создан"/>
            </c:if>
        </font>
    </div>
    <form action="CreateProduct" method="POST">
        <br><input type="text" class="un" id="name" name="name" placeholder="Название" required/>
        <select name="type" id="type" class="un">
            <option value="Автомобиль">Автомобиль</option>
            <option value="Мотоцикл">Мотоцикл</option>
            <option value="Компьютер">Компьютер</option>
            <option value="Телевизор">Теливизор</option>
            <option value="Телефон">Телефон</option>
        </select>


        <input type="text" id="serial_no" name="serial_no" placeholder="Серийный номер" class="un"
               required/>


        <input type="text" id="price" name="price" placeholder="Цена" class="un" required/>

        <div class="flex-submit">
            <div class="flex-super">
                <button type="submit" class="submit">Создать</button>
            </div>
            <div class="flex-super">
                <button class="submit" onclick="window.location='Home'" id="myButton">На главную</button>
            </div>
        </div>
    </form>
</div>

</body>

</html>