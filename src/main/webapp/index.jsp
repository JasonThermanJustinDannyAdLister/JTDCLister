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

        .scrollspy-example {
            position: relative;
            height: 200px;
            margin-top: .5rem;
            overflow: auto;
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

        .gallery-container {
            width: 100%;
            height: 200px;
            overflow-y: auto;
        }

        .gallery {
            border: 1px solid black;
            height: 200px;
            width: 100%;
            overflow-x: hidden;
            overflow-y: scroll;
        }

        .thumbnails {
            width: 100%;
        }

        .gallery-container img {
            width: 200px;
            height: auto;
        }

        .thumbnails img {
            width: auto;
            height: 200px;
            display: inline-block;
            float: left;
            border: 1px solid #ddd;
            margin: 1px;
        }
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
        .car-item {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            margin: 0 10px;
            border: 3px solid #eee;
            padding: 15px;
            border-radius: 10px;
            background: green;
            max-width:100%;
            max-height:100%;
            height: 150px;
            width: 150px;
        }
        .car-item:hover {
            width: 800px;
            height: 200px;
            transition: ease-in-out 2s;
            border: 3px solid #eee;
            box-shadow: black;
        }
        .base {
            background: #007b5e;
            opacity: .8%;
            padding: 25px;
            position: fixed;
            bottom: 0;
            display: flex;
            color: white;
            width: 100%;
            align-items: center;
            justify-content: center;
            overflow-y: hidden;

        }

        .base:hover {
            opacity: 1;
            transition: ease-in-out 2s;
            border: whitesmoke 7px;
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

    <h4 class="car-one" id="verse1">2002 Toyota Camery</h4>
    <p>157 to 192 hp</p>
    <p>2.4 L 4-cylinder, 3.0 L V6</p>
    <p>4-speed automatic, 5-speed manual</p>
    <h4 class="car-two" id="verse2">2007 Toyota Tacoma</h4>
    <p>Horsepower: ? to ? hp</p>
    <p>MPG: Up to ? city / ? highway</p>
    <h4 class="car-three" id="verse3">2015 toyota tundra</h4>


    <p>Horsepower: 310 to 381 hp</p>
    <p>MPG: Up to 15 city / 19 highway</p>
    <p>Engine: 4.6 L V8, 5.7 L V8</p>
    <h4 id="verse4">2020 toyota corolla</h4>
    <p>MPG: Up to 31 city / 40 highway</p>
    <p>Horsepower: 139 to 169 hp</p>
    <p>Engine: 1.8 L 4-cylinder, 2.0 L 4-cylinder</p>
    <h4 id="verse5">2022 Toyota Tundra</h4>
    <p>Horsepower: 348 to 389 hp</p>
    <p>MPG: Up to 18 city / 24 highway</p>
    <h4 id="verse6">2022 Toyota RAV4 XLE Premium</h4>
    <p>Horsepower: 203 hp</p>
    <p>MPG: Up to 27 city / 35 highway</p>
</div>

<div class="alert alert-success" role="alert">
    <strong>Hey User,</strong> <a href="/register"> Register</a> Or <a href="/login"> Log In</a> to see all content!!
</div>

<br><br><br><br><br><br>
<%--<img class="img-thumbnail" src="../img/cars.jpeg"  alt="Thumbnail image"><img class="img-thumbnail" src="../img/carr.mp4
" alt="Thumbnail image"><img class="img-thumbnail" src="../img/car-one.jpg" alt="Thumbnail image">--%>
<div  id="drop" class="base car-one">
    <div class="car-item " style="background: url(https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/image-17-e1601594471927.png?q=50&fit=crop&w=750&dpr=1.5
) no-repeat  center ; /*background-size: contain*/;">
    </div>
    <div class="car-item car-two" style="background: url(https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/image-15.png?q=50&fit=crop&w=750&dpr=1.5) no-repeat  center; /*background-size: contain*/;">
    </div>
    <div class="car-item" style="background: url(https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/image-13.png?q=50&fit=crop&w=750&dpr=1.5) no-repeat  center; /*background-size: contain*/;">
    </div>
    <div class="car-item" style="background: url(https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/image-12.png?q=50&fit=crop&w=750&dpr=1.5) no-repeat  center; /*background-size: contain*/;">
    </div>
    <div class="car-item" style="background: url(https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/image-10.png?q=50&fit=crop&w=750&dpr=1.5
) no-repeat  center; /*background-size: contain*/;">
    </div>
    <div class="car-item" style="background: url(https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/image-8-e1601593726138.png?q=50&fit=crop&w=750&dpr=1.5) no-repeat  center; /*background-size: contain*/;">
    </div>
    <div class="car-item" style="background: url(https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/image-6-e1601593079167.png?q=50&fit=crop&w=750&dpr=1.5) no-repeat  center; /*background-size: contain*/;">
    </div>
    <div class="car-item" style="background: url(https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/image-5-e1601592843908.png?q=50&fit=crop&w=750&dpr=1.5
) no-repeat  center ; /*background-size: contain*/;">
    </div>
    <div class="car-item" style="background: url(https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/image-3-e1601592524981.png?q=50&fit=crop&w=750&dpr=1.5
) no-repeat  center; /*background-size: contain*/;">
    </div>
    <div class="car-item" style="background: url(https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/image-1.png?q=50&fit=crop&w=750&dpr=1.5
) no-repeat  center; /*background-size: contain*/; ">

    </div>
</div>


<script>
    $("car-1").click(function () {
        $("li").css({"font-weight":"bolder", "color":"brown"})
    });
    $("car-2").click(function () {
        $("li").css({"font-weight":"bolder", "color":"brown"})
    });
    $("car-3").click(function () {
        $("li").css({"font-weight":"bolder", "color":"brown"})
    });
    /*Will Continue after functionality*/

    var car = document.getElementsByClassName("car-one");
    car.addEventListener('click', clicker );

    function clicker() {
        $("car-two").css({"font-weight":"bolder", "color":"brown"})
    }
    document.onscroll = function() {
        if (window.innerHeight + window.scrollY > document.body.clientHeight) {
            document.getElementById('drop').style.display='none';
        }
    }

</script>
<br><br><br><br><br><br><br>
<jsp:include page="/WEB-INF/partials/footer.jsp" />
</body>


</html>