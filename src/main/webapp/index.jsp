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

        .img-thumbnail {
            padding: 0.25rem;
            background-color: #fff;
            border: 1px solid #dee2e6;
            border-radius: 0.25rem;
            width: 150px;
            height: 150px;
            position: relative;
            overflow: scroll;
            overflow-y: hidden;


        }
    </style>
</head>
<body id="body">
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="alert alert-success" role="alert">
    <strong>Try This!</strong> 🎮  Insert Konami Code🎮
</div>

<div id="main_header" class="container-fluid ">
    <h1 class="#" style="font-family: 'Press Start 2P'">"Welcome to the Yota-Lister!"</h1>
</div>

<div class="jumbotron" style="background: url(https://images.unsplash.com/photo-1618312980096-873bd19759a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80) no-repeat  center fixed; /*background-size: contain*/;height: 400px; width:100% ">
</div>


<div class="container">
    <div class="row">
        <div class="col-lg-3 col-md-6">
            <p>The Yota-nation was taken by storm when magnam nost reprehenderit. Inventore repellat eum facilis illum dolor doloribus, eius quibusdam suscipit delectus vitae. Explicabo beatae vitae quos laborum expedita hic, maiores ipsa eaque? Nobis repudiandae!</p>
        </div>
        <div class="col-lg-3 col-md-6">
            <p>As senior investors in Yota begin to see MASSIVE GAINS in the 3rd and 4th quarter. The question still remains whether they can maintain this momentum. Illo odit atque dolore corporis vero? Voluptatum cupiditate quisquam perspiciatis obcaecati neque.</p>
        </div>
        <div class="col-lg-3 col-md-6">
            <p>GREAT MERGE between Yota and Old CEO's rival company, laboriosam distinctio distinctio est blanditiis vitae laudantium dolore? Tempore doloremque aspernatur repellat consectetur sit vero velit possimus suscipit? Odit doloremque?</p>
        </div>
        <div class="col-lg-3 col-md-6">
            <p>There's never been a greater time to view a Toyota add! Totam suscipit possimus deserunt adipisci beatae? Mollitia explicabo voluptates hic delectus voluptates commodi necessitatibus perferendis. Rem ipsam itaque illo perspiciatis illo doloribus. Enim iste.</p>
        </div>
    </div>
</div>
<style type="text/css">
    .scrollspy-example {
        position: relative;
        height: 200px;
        margin-top: .5rem;
        overflow: auto;
        color: darkgreen;
    }
    .scrollspy-example-two {
        position: relative;
        height: 150px;
        overflow-y: hidden;
        overflow-x: scroll;
        color: darkgreen;
    }
    @media only screen and (max-width: 412px) {
        .jumbotron {
            height: 450px;
            width: 100%;
            overflow-y: hidden;
            overflow-x: scroll;
        }
    }












</style>
<nav id="navbar-example2" class="navbar navbar-dark bg-dark">
    <h3 class="navbar-brand">Generations Of Toyota</h3>
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
    <h2>Listings for:</h2>
    <h4 id="verse1">2002 Toyota Camery</h4>
    <p>157 to 192 hp</p>
    <p>2.4 L 4-cylinder, 3.0 L V6</p>
    <p>4-speed automatic, 5-speed manual</p>
    <h4 id="verse2">2007 Toyota Tacoma</h4>
    <p>Horsepower: ? to ? hp</p>
    <p>MPG: Up to ? city / ? highway</p>
    <h4 id="verse3">2015 toyota tundra</h4>
    <p>Horsepower: 310 to 381 hp</p>
    <p>MPG: Up to 15 city / 19 highway</p>
    <p>Engine: 4.6 L V8, 5.7 L V8</p>
    <h4 id="verse4">2020 toyota corolla</h4>
    <p>MPG: Up to 31 city / 40 highway</p>
    <p>Horsepower: 139 to 169 hp</p>
    <p>Engine: 1.8 L 4-cylinder, 2.0 L 4-cylinder</p>
    <h4 id="verse5">2022 Toyota ????</h4>
    <p>Horsepower: 139 to 169 hp</p>
    <p>MPG: Up to ? city / ? highway</p>
    <h4 id="verse6">2022 Toyota ????</h4>
    <p>Horsepower: 139 to 169 hp</p>
    <p>MPG: Up to ? city / ? highway</p>
    <p>Horsepower: 139 to 169 hp</p>

</div>


<div class="alert alert-success" role="alert">
    <strong>Hey User,</strong> <a href="/register"> Register</a> Or <a href="/login"> Log In</a> to see all content!!
</div>
<br>
<%--<img class="img-thumbnail" src="../img/cars.jpeg"  alt="Thumbnail image"><img class="img-thumbnail" src="../img/carr.mp4
" alt="Thumbnail image"><img class="img-thumbnail" src="../img/car-one.jpg" alt="Thumbnail image">--%>
<div class="container-fluid">
    <div class="img-thumbnail" style="background: url(https://images.unsplash.com/photo-1608234493333-09825469ab3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTJ8fHRveW90YXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60) no-repeat  center ; /*background-size: contain*/;height: 150px; width:150px">
    </div>
    <div class="img-thumbnail" style="background: url(https://images.unsplash.com/photo-1578102176342-dbaecee78bca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDN8fHRveW90YXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60) no-repeat  center; /*background-size: contain*/;height: 150px; width:150px">
    </div>
    <div class="img-thumbnail" style="background: url(https://images.unsplash.com/photo-1618609740315-de8a9088ea77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fHRveW90YXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60) no-repeat  center; /*background-size: contain*/;height: 150px; width:150px">
    </div>
    <div class="img-thumbnail" style="background: url(https://images.unsplash.com/photo-1626072557464-90403d788e8d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHRveW90YXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60) no-repeat  center; /*background-size: contain*/;height: 150px; width:150px">
    </div>
    <div class="img-thumbnail" style="background: url(https://images.unsplash.com/flagged/photo-1564153296137-400b51e1ff6d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHRveW90YXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60) no-repeat  center; /*background-size: contain*/;height: 150px; width:150px">
    </div>
    <div class="img-thumbnail" style="background: url(https://images.unsplash.com/photo-1638618164682-12b986ec2a75?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHRveW90YXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60) no-repeat  center; /*background-size: contain*/;height: 150px; width:150px">
    </div>
    <div class="img-thumbnail" style="background: url(https://images.unsplash.com/photo-1559416523-140ddc3d238c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dG95b3RhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60) no-repeat  center; /*background-size: contain*/;height: 150px; width:150px">
    </div>
    <div class="img-thumbnail" style="background: url(https://images.unsplash.com/photo-1629886031229-07b29e675653?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHRveW90YSUyMHN1cHJhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60) no-repeat  center; /*background-size: contain*/;height: 150px; width:150px">
    </div>
    <div class="img-thumbnail" style="background: url(https://images.unsplash.com/photo-1618312980096-873bd19759a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80) no-repeat  center; /*background-size: contain*/;height: fit-content; width:fit-content">
    </div>
    <div class="img-thumbnail" style="background: url(https://images.unsplash.com/photo-1627008119197-6889fd74266a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fHRveW90YSUyMHN1cHJhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60) no-repeat  center; /*background-size: contain*/;height: 150px; width:150px">
    </div>
</div>

</body>
<jsp:include page="/WEB-INF/partials/footer.jsp" />

</html>