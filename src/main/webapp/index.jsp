<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to the Yota-Lister!"/>
    </jsp:include>
    <style>
        #body{
            background-color: lightgray;
        }
        #main_header{
            text-align: center;
            color: blue;
        }
        h1:hover {
            color: green;
            transition: ease-in-out 1ms;
        }
    </style>
</head>
<body id="body">
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div id="main_header" class="container-fluid ">
    <h1 class="#" style="font-family: 'Press Start 2P'">"Welcome to the Yota-Lister!"</h1>
</div>

<div class="jumbotron" style="background: url(https://images.unsplash.com/photo-1618312980096-873bd19759a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80) no-repeat  center fixed; /*background-size: contain*/;height: 400px; width:100% ">
</div>


<div class="container">
    <div class="row">
        <div class="col-lg-3 col-md-6">
            <p>Consectetur reprehenderit magnam nostrum quod reprehenderit. Inventore repellat eum facilis illum dolor doloribus, eius quibusdam suscipit delectus vitae. Explicabo beatae vitae quos laborum expedita hic, maiores ipsa eaque? Nobis repudiandae!</p>
        </div>
        <div class="col-lg-3 col-md-6">
            <p>Elit rerum asperiores nostrum ipsum sint debitis et, quos harum. Ut reiciendis id dolorem dolorum ad ex in. Illo odit atque dolore corporis vero? Voluptatum cupiditate quisquam perspiciatis obcaecati neque.</p>
        </div>
        <div class="col-lg-3 col-md-6">
            <p>Sit quibusdam dolorum delectus ducimus consequatur ullam cupiditate quia sit, laboriosam distinctio distinctio est blanditiis vitae laudantium dolore? Tempore doloremque aspernatur repellat consectetur sit vero velit possimus suscipit? Odit doloremque?</p>
        </div>
        <div class="col-lg-3 col-md-6">
            <p>Consectetur doloribus dolor quia iste sint! Totam suscipit possimus deserunt adipisci beatae? Mollitia explicabo voluptates hic delectus voluptates commodi necessitatibus perferendis. Rem ipsam itaque illo perspiciatis illo doloribus. Enim iste.</p>
        </div>
    </div>
</div>
<style type="text/css" scoped>
    .scrollspy-example {
        position: relative;
        height: 200px;
        margin-top: .5rem;
        overflow: auto;
        color: darkgreen;
    }
</style>
<nav id="navbar-example2" class="navbar navbar-dark bg-dark">
    <h3 class="navbar-brand">Generations Of Toyot</h3>
    <ul class="nav nav-pills">
        <li class="nav-item"><a class="nav-link" href="#verse1">1990 - 1995</a></li>
        <li class="nav-item"><a class="nav-link" href="#verse2">1995 - 2000</a></li>
        <li class="nav-item"><a class="nav-link" href="#verse3">2000 - 2005</a></li>
        <li class="nav-item"><a class="nav-link" href="#verse4">2005 - 2010</a></li>
        <li class="nav-item"><a class="nav-link" href="#verse5">2010 - 2015</a></li>
        <li class="nav-item"><a class="nav-link" href="#verse6">2015 - 2020</a></li>

    </ul>
</nav>
<div data-spy="scroll" data-target="#navbar-example2" data-offset="0" class="scrollspy-example">
    <h2>Wish List</h2>
    <h4 id="verse1">2002 Toyota Camery</h4>
    <p>157 to 192 hp</p>
    <p>2.4 L 4-cylinder, 3.0 L V6</p>
    <p>4-speed automatic, 5-speed manual</p>
    <h4 id="verse2">2007 Toyota Tacoma</h4>
    <p>Back Bumper #462</p>
    <h4 id="verse3">2015 toyota tundra</h4>
    <p>Horsepower: 310 to 381 hp</p>
    <p>MPG: Up to 15 city / 19 highway</p>
    <p>Engine: 4.6 L V8, 5.7 L V8</p>
    <h4 id="verse4">2020 toyota corolla</h4>
    <p>MPG: Up to 31 city / 40 highway</p>
    <p>Horsepower: 139 to 169 hp</p>
    <p>Engine: 1.8 L 4-cylinder, 2.0 L 4-cylinder
    </p>
    <h4 id="verse5">2022 ???????</h4>
    <p>????????</p>

</div>
</body>
<jsp:include page="/WEB-INF/partials/footer.jsp" />

</html>