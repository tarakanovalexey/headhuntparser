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
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body class="w3-light-grey">
<!-- header -->
<div>
    <h1 class="w3-container w3-blue-grey w3-opacity w3-center">Сайт для парсинга:</h1>
</div>

<div>       <!-- content -->

    <div align="center">    <!-- buttons holder -->
        <button onclick="location.href='/list'">Список пользователей</button>

        <button onclick="location.href='/add'">Добавить пользователя</button>
    </div>
    <br>

    <div align="center">
        <table>
            <tr>
                <th align="center">Возраст</th>
                <th align="center">Зарплата</th>
                <th align="center">Город</th>
            </tr>
            <tr>
                <td>От <input type="text" minlength="2" maxlength="2" size="3"></td>
                <td>От <input type="text" maxlength="7" size="8"></td>
                <td>
                    <select name="City">
                        <option value="Moscow"> Москва </option>
                        <option value="SPB"> Санкт-Петербург </option>
                        <option value="Novosibirsk"> Новосибирск </option>
                        <option value="Ekaterinburg"> Екатеринбург </option>
                        <option value="NN"> Нижний Новгород </option>
                        <option value="Kazan"> Казань </option>
                        <option value="Chelyabinsk"> Челябинск </option>
                        <option value="Omsk"> Омск </option>
                        <option value="Samara"> Самара </option>
                        <option value="Rostov"> Ростов-на-Дону </option>
                        <option value="Ufa"> Уфа </option>
                        <option value="Krasnoyarsk"> Красноярск </option>
                        <option value="Voronezh"> Воронеж </option>
                        <option value="Perm"> Пермь </option>
                        <option value="Volgograd"> Волгоград </option>
                        <option value="Krasnodar"> Краснодар </option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>До <input type="text" minlength="2" maxlength="2" size="3"></td>
                <td>До <input type="text" maxlength="7" size="8"></td>
                <td></td>
            </tr>
        </table>

    </div>

    <div align="center">
        <table>
            <tr>
                <th>HeadHunter</th>
                <th>SuperJob</th>
                <th>Avito</th>
            </tr>
            <tr>
                <td>
                    <button style="color:white;background-color: white" onclick="window.location.href='https://hh.ru/search/resume?text=&area=1&clusters=true&exp_period=all_time&logic=normal&pos=full_text'">
                        <img src="https://i.hh.ru/logos/svg/hh.ru-small.svg" width="150" height="50" alt="HeadHunter">
                    </button>
                </td>

                <td>
                    <button style="color:white;background-color: white" onclick="window.location.href='https://www.superjob.ru/resume/search_resume.html?sbmit=1'">
                        <img src="https://img.superjob.ru/img/logotip/superjob_logo_450.gif?20180508" width="150" height="50" alt="SuperJob">
                    </button>
                </td>

                <td>
                    <button style="color:white;background-color: white" onclick="window.location.href='https://www.avito.ru/moskva/rezume?s_trg=11'">
                        <img src="http://spb.spravka.city/public_files/company/logo/2441/logo-655461-sankt-peterburg.png" width="150" height="50"  alt="Avito">
                    </button>
                </td>

            </tr>
            <tr>
                <td width="150" align="center">
                    <button name="hhexcel" class="w3-button w3-small w3-round-xxlarge w3-indigo w3-hover-green" onclick="">
                        Выгрузить в excel
                    </button>
                </td>

                <td width="150" align="center">
                    <button name="superjobexcel" class="w3-button w3-small w3-round-xxlarge w3-indigo w3-hover-green" onclick="">
                        Выгрузить в excel
                    </button>
                </td>

                <td width="150" align="center">
                    <button class="w3-button w3-small w3-round-xxlarge w3-indigo w3-hover-green" name="avitoexcel" onclick="">
                        Выгрузить в excel
                    </button>
                </td>
            </tr>
        </table>

    </div>


    <div align="center">

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
