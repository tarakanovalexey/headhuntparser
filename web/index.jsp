<%--
  Created by IntelliJ IDEA.
  User: Aleksey Tarakanov
  Date: 28.03.2019
  Time: 0:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    body {
        background: url(https://avatanplus.com/files/resources/original/5745847bd4fa6154e78d83e0.jpg) no-repeat center center fixed;
        -moz-background-size: cover; /* Firefox 3.6+ */
        -webkit-background-size: cover; /* Safari 3.1+ и Chrome 4.0+ */
        -o-background-size: cover; /* Opera 9.6+ */
        background-size: cover; /* Современные браузеры */
    }
</style>

<head>
    <meta charset="UTF-8">
    <title>Headhunt parser</title>
</head>
<body>
<!-- header -->
<div>
    <h1 align="center">Сайт для парсинга:</h1>
</div>

<div>       <!-- content -->

    <div align="center">    <!-- buttons holder -->
        <button onclick="location.href='/list'">Авторизация</button>
        <button onclick="location.href='/add'">Регистрация</button>
    </div>
    <br>

    <div align="center">
        <table>
            <tr>
                <th>Возраст</th>
                <th>Зарплата</th>
                <th>Город</th>
            </tr>
            <tr><td>От</td><td>От</td><td>Москва(dropdown)</td></tr>
            <tr><td>До</td><td>До</td><td></td></tr>
        </table>

    </div>


    <div align="center">
        <button onclick="window.location.href='https://hh.ru/search/resume?text=&area=1&clusters=true&exp_period=all_time&logic=normal&pos=full_text'">
            <img src="https://i.hh.ru/logos/svg/hh.ru-small.svg" width="150" height="50" alt="HeadHunter">
        </button>
    </div>
    <div align="center">
        <button onclick="window.location.href='https://www.superjob.ru/resume/search_resume.html?sbmit=1'">
            <img src="https://img.superjob.ru/img/logotip/superjob_logo_450.gif?20180508" width="150" height="50" alt="SuperJob">
        </button>
    </div>
    <div align="center">
        <button onclick="window.location.href='https://www.avito.ru/moskva/rezume?s_trg=11'">
            <img src="https://www.freelancejob.ru/upload/419/57570978160947.jpg" width="150" height="50"  alt="Avito">
        </button>
    </div>


</div>
</body>


<footer>
    <div align="center">
        <br>
        Посещений: <%=(request.getAttribute("current_count"))%>
        <br>
        (C) Алексей Тараканов
    </div>
</footer>
</html>
