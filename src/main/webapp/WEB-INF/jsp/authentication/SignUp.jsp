<!-- Author: Elvar (eas20@hi.is) -->
<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<html lang="en" >

<!-- Head -->
    <head>
        <title>Éta</title>
        <link rel="stylesheet" type="text/css" href="/css/index.css/"/>
        <link href="https://fonts.googleapis.com/css?family=Lato|Merriweather" rel="stylesheet">
    </head>

<!-- Content  -->
    <body>
        <%@ include file="../Menu.jsp"%>

        <sf:form method="POST" modelAttribute="user" action="signup">

            <table>
                <tr>
                    <td> Name:</td>
                    <td><sf:input path="username" type="text" placeholder="Enter name"/></td>
                    <td><sf:errors path="username"/></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><sf:password path="password" placeholder="Enter password"/></td>
                    <td><sf:errors path="password"/></td>
                </tr>
                <tr>
                    <td>E-mail:</td>
                    <td><sf:input path="email" type="text" placeholder="Enter email"/></td>
                    <td><sf:errors path="email"/></td>
                </tr>
                <tr>
                    <td>Restaurant manager </td>
                    <td><sf:checkbox path="type" value="MANAGER"/></td>
                </tr>
            </table>

            <input type="submit" VALUE="Submit"/>

        </sf:form>

    </body>
    <footer>
    </footer>
</html>
