<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <link href="main.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <title>Создание иска - Киберстрахование!</title>
    <script>
        function redirectClaimsList() {
            window.location = "ClaimsList";
            return false;
        }
    </script>
</head>
<body>
<div class="main">
    <p class="sign" align="center">Создание иска</p>
    <div style="text-align: center;">
        <font color="red">
            <c:if test="${param.status == false}">
                <c:out value="Не удалось создать/неверные данные"/>
            </c:if>
        </font>
        <font color="green">
            <c:if test="${param.status}">
                <c:out value="Иск создан! "/>
            </c:if>
        </font>
    </div>
    <form action="CreateClaim" method="POST">
        <br><input type="hidden" id="product_id" name="reg_id" value="${param.id}"/>
        <select name="category" id="category" class="un">
            <option value="Механическое повреждение">Механическое повреждение</option>
            <option value="Программное повреждение">Программное повреждение</option>
            <option value="Кража">Кража</option>
            <option value="Утеря">Утеря</option>
            <option value="Иное">Иное</option>
        </select>


        <textarea rows="4" cols="50" maxlength="300" id="description" name="description" class="un"
                  placeholder="Подробности о вашей проблеме"></textarea>
        <div class="flex-submit">

            <div class="flex-super">
                <button type="submit" class="submit">Создать</button>
            </div>

            <div class="flex-super">
                <input type="button" class="submit" onclick="redirectClaimsList()" id="myButton" value="Ваши иски">
            </div>
        </div>
    </form>
</div>
</body>
</html>