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
            <title>Регистрация объекта страхования - Киберстрахование!</title>
        </head>

        <body>

            <body>
                <div class="main">
                    <p class="sign" align="center">Регистрация объекта страхования</p>
                    <div style="text-align: center;">
                        <font color="red">
                            <c:if test="${param.status == false}">
                                <c:out value="Не удалось зарегистрировать/неверные данные" />
                            </c:if>
                        </font>
                        <font color="green">
                            <c:if test="${param.status}">
                                <c:out value="Регистрация успешно завершена" />
                            </c:if>
                        </font>
                    </div>
                    <form action="Registration" method="POST">
                        <br><input type="text" class="un" id="name" name="name" placeholder="Название" required />

                        <input type="text" class="un" id="serialNo" name="serialNo"
                            placeholder="Серийный номер" required />

                        <input type="date" id="purchase_date" name="purchase_date" class="un" required placeholder="Дата приобритения"/>

                        <div class="flex-submit">
                            <div class="flex-super">
                                <button type="submit" class="submit">Зарегистрировать</button>
                            </div>
                            <div class="flex-super">
                                <button class="submit" onclick="window.location='Home'" id="myButton"
                                        class="submit">На главную</button>
                            </div>
                        </div>

                    </form>
                </div>

            </body>
        </body>

        </html>