<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<%
    int index = 0;
%>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Управление исками - Киберстрахование!</title>
    <script>
        function confirmGo(m, u) {
            if (confirm(m)) {
                window.location = u;
            }
        }

        function updateStatus(id, flag) {
            if (confirm("Вы уверены, что хотите обновить статус иска?")) {
                console.log(id)
                if (flag) {
                    window.location = `UpdateClaim?id=` + id  + `&approve=true`;
                } else {
                    window.location = `UpdateClaim?id=` + id  + `&approve=false`;
                }
            }
        }
    </script>
    <link href="main.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>

<body>
<h3>Управление исками</h3>
<hr size="3" color="gray"/>
<div style="text-align: center;">
    <font color="red"> <c:if test="${param.status == false}">
        <c:out value="Ошибка обновления иска"/>
    </c:if>
    </font> <font color="green"> <c:if test="${param.status}">
    <c:out value="Операция успещно выполнена"/>
</c:if>
</font>
</div>
<c:choose>
    <c:when test="${users.size() == 0}">
        <h3 align="center">
            <c:out value="Нет активных исков"/>
        </h3>
    </c:when>
    <c:when test="${claims_list.size() > 0}">
        <form method="POST" action="ClaimsList" id="claimsList">
            <input style="background-color: aliceblue;" value="${param.search}" type="text" name="search" class="un"
                   placeholder="Поиск по категории" autocomplete="off"/>
            <i class="fa fa-search" style="font-size: 20px;position: relative;left:-20%"></i>
        </form>
        <table>
            <tr>
                <th>Серийный номер</th>
                <th>Email пользователя</th>
                <th>Название</th>
                <th>Категория</th>
                <th>Описание</th>
                <th>Статус иска</th>
                <th>Последнее изменение</th>
                <th><i class="fa fa-bars" style="font-size:25px"></i></th>
            </tr>
            <c:forEach items="${claims_list}" var="item">
                <tr>
                    <td><%=++index%>
                    </td>
                    <td><a style="text-decoration:underline;" href="mailto:<c:out value="${item.userEmail}"/>"><c:out
                            value="${item.userEmail}"/></a></td>
                    <td><c:out value="${item.productName}"/></td>
                    <td><c:out value="${item.category}"/></td>
                    <td><c:out value="${item.description}"/></td>
                    <td><c:out value="${item.claimStatus ? 'Одобрен' : 'Не одобрен'}"/></td>
                    <td><c:out value="${item.lastModifiedDate}"/></td>
                    <td>
                        <c:if test="${!item.claimStatus}">
                            <a onclick="updateStatus(<c:out value="${item.id}"/>, true)"><font
                                style="font-weight:bold;text-decoration:underline;color:blue;">Одобрить</font>
                            </a>
                        </c:if>
                        <c:if test="${item.claimStatus}">
                            <a onclick="updateStatus(<c:out value="${item.id}"/>, false)"><font
                                    style="font-weight:bold;text-decoration:underline;color:blue;">Отменить</font>
                            </a>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:when>
</c:choose>
<br>
<br>
<button style="margin-left: unset;" class="submit"
        onclick="window.location='Home'" id="myButton">На главную
</button>
</body>

</html>