<!-- Author: Elvar (eas20@hi.is) -->
<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>


<html lang="en">
<!-- Head -->
<head>
    <title>Éta</title>
    <link rel="stylesheet" type="text/css" href="/css/styles.css/"/>
    <link rel="stylesheet" type="text/css" href="/css/forms.css/"/>
    <link rel="stylesheet" type="text/css" href="/css/insert.css/"/>
    <link href="https://fonts.googleapis.com/css?family=Lato|Merriweather" rel="stylesheet">
</head>
<!-- Head -->


<!-- Content  -->
<body>
<%@ include file="../Menu.jsp"%>

<body>
<h1>
    Setja inn nýjan veitingastað
</h1>

<c:if test="${inserted}">
    <p>${newRestaurant.name} skráður!</br>
    Smelltu hér til að skoða:
    </br>
        <a href="/restaurant/${newRestaurant.id}">${newRestaurant.name}</a></p>
</c:if>
<fieldset>
    <sf:form method="POST" modelAttribute="restaurant" action="insert">

        <table>
            <tr>
                <td><h4>Nafn:</h4></td>
                    <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
                <td><sf:input path="name" type="text" placeholder="Nafn"/></td>
            </tr>
            <tr>
                <td><h4>Staðsetning</h4></td>
                    <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
                <td><sf:input path="location" type="text" placeholder="Staðsetning"/></td>
            </tr>

            <tr>
                <td><h4>Um veitingastað: </h4></td>
                    <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
                <td><sf:input path="description" class="textarea" type="text" placeholder="Segðu eitthvað um staðinn"/></td>
            </tr>
            <tr>
                <td><h4>Verð: </h4></td>
                <td><sf:radiobuttons path="price" items="${prices}" checked="checked" /></td>
            </tr>
            <tr>
                <td><h4>
                    Tegundir
                </h4></td>
                <td>
                    <sf:checkboxes path="genres" items="${genres}" />

                </td>
            </tr>

        </table>

        <input type="submit" VALUE="Vista nýjan veitingastað"/>

    </sf:form>
</fieldset>
</body>
</html>

