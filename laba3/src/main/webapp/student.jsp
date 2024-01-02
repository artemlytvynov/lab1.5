<%-- 
    Document   : student
    Created on : 10 нояб. 2023 г., 13:18:56
    Author     : lytvy
--%>

<%@page import="java.util.*"%>
<%@page import="sumdu.edu.ua.laba3.Student"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            html{
                background-image: url('https://s00.yaplakal.com/pics/pics_original/4/1/0/6269014.jpg');
                background-size: cover;
                background-repeat: no-repeat;
            }
            h1{
            text-align:center;
            }
            #page{
            width:700px;
            margin:auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            margin-top: 30px;
            }
            form{
            align-items: center;
            display: flex;
            width:400px;
            margin:20px auto;
            }
            input[type=submit]{
            margin:auto;
            }
            .list, .list td, .list th {
            margin:auto;
            border:1px solid black;
            border-collapse: collapse;
            }
        </style>
    </head>
    <body>
         <div id="page">
    <h1>Servlet</h1>
    <form method="post" action="AddStudent">
    <table>
    <tbody>
        <tr>
            <td><label for="name">Name</label></td>
            <td><input id="name" type="text" name="name"></td>
        </tr>
        <tr>
            <td><label for="surname">Surname</td>
            <td><input id="surname" type="text" name="surname"></td>
        </tr>
        <tr>
            <td><label for="email">Email</td>
            <td><input id="email" type="email" name="email"></td>
        </tr>
        <tr>
            <td><label for="age">Age</td>
            <td><input id="age" type="text" name="age"></td>
        </tr>
        <tr>
            <td><label for="group">Group</td>
            <td><input id="group" type="text" name="group"></td>
        </tr>
        <tr>
            <td><label for="faculty">Faculty</td>
            <td><input id="faculty" type="text" name="faculty"></td>
        </tr>
    </tbody>
    </table>
    <input type="submit" name="send" value="Send">
    </form>

        <c:if test="${students.size() > 2}">
    <form action="calculateStats">
        <input type="submit" name="send2" value="Statistics">
    </form>
    </c:if>
    <div id="content">
        <c:if test="${students.size() > 0}">
            <table class="list">
                <tr>
                    <th>Name</th>
                    <th>Surname</th>
                    <th>Age</th>
                    <th>Email</th>
                    <th>Group</th>
                    <th>Faculty</th>
                </tr>
                <c:forEach var="student" items="${students}">
                    <tr>
                        <td><c:out value="${student.getName()}"/></td>
                        <td><c:out value="${student.getSurname()}"/></td>
                        <td><c:out value="${student.getAge()}"/></td>
                        <td><c:out value="${student.getEmail()}"/></td>
                        <td><c:out value="${student.getGroup()}"/></td>
                        <td><c:out value="${student.getFaculty()}"/></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </div>
    </body>
</html>
