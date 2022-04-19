<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to the Yota-Lister!"/>
    </jsp:include>
    <style>
        #body{
            background-color: #007b5e;
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
        bottom: 60px;
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


<%--<div class="alert alert-success alert-dismissible fade show" role="alert">--%>
<%--    <button type="button" class="close" data-dismiss="alert" aria-label="Close">--%>
<%--        <span aria-hidden="true">×</span>--%>
<%--    </button>--%>
<%--&lt;%&ndash;    <strong>Try This!</strong> 🎮  Insert Konami Code🎮&ndash;%&gt;--%>
<%--</div>--%>


<div id="main_header" class="container-fluid ">
    <h1 class="#" style="font-family: 'Press Start 2P'">"Welcome to the Yota-Lister!"</h1>
</div>

<div class="jumbotron" style="background: url(https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fstatic1.hotcarsimages.com%2Fwordpress%2Fwp-content%2Fuploads%2F2020%2F10%2FToyota-MR2-TTE-Turbo-1-e1601602399517.jpg) no-repeat  center fixed; /*background-size: contain*/;height: 100%; width:100% ">
</div>
<div class="alert alert-success alert-dismissible fade show" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">×</span>
    </button>
    <strong>Hey User,</strong> <a href="/register"> Register</a> Or <a href="/login"> Log In</a> to see all content!!
</div>


<br><br><br><br><br><br>
<div  id="drop" class="base car-one">
    <div class="car-item 10" style="background: url(https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/image-17-e1601594471927.png?q=50&fit=crop&w=750&dpr=1.5
) no-repeat  center ; /*background-size: contain*/;">
        <a class="nav-link" href="/ads/individualAd?id=10">Toyota MR2 TTE Turbo</a>
    </div>
    <div class="car-item 1" style="background: url(https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/image-15.png?q=50&fit=crop&w=750&dpr=1.5) no-repeat  center; /*background-size: contain*/;">
        <a class="nav-link" href="/ads/individualAd?id=9">Toyota SA</a>
    </div>
    <div class="car-item" style="background: url(https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/image-13.png?q=50&fit=crop&w=750&dpr=1.5) no-repeat  center; /*background-size: contain*/;">
        <a class="nav-link" href="/ads/individualAd?id=8">1997 Toyota Paseo Cabriolet</a>
    </div>
    <div class="car-item" style="background: url(https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/image-12.png?q=50&fit=crop&w=750&dpr=1.5) no-repeat  center; /*background-size: contain*/;">
        <a class="nav-link" href="/ads/individualAd?id=7">1994 Toyota Corolla TRD2000</a>
    </div>
    <div class="car-item" style="background: url(https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/image-10.png?q=50&fit=crop&w=750&dpr=1.5) no-repeat  center; /*background-size: contain*/;">
        <a class="nav-link" href="/ads/individualAd?id=6">1959 Toyopet Crown</a>
    </div>
    <div class="car-item" style="background: url(https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/image-8-e1601593726138.png?q=50&fit=crop&w=750&dpr=1.5) no-repeat  center; /*background-size: contain*/;">
        <a class="nav-link" href="/ads/individualAd?id=5">Toyota 2000GT</a>
    </div>
    <div class="car-item" style="background: url(https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/image-6-e1601593079167.png?q=50&fit=crop&w=750&dpr=1.5) no-repeat  center; /*background-size: contain*/;">
        <a class="nav-link" href="/ads/individualAd?id=4">Toyota Mega Cruiser</a>
    </div>
    <div class="car-item" style="background: url(https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/image-5-e1601592843908.png?q=50&fit=crop&w=750&dpr=1.5) no-repeat  center ; /*background-size: contain*/;">
        <a class="nav-link" href="/ads/individualAd?id=3">Toyota Sprinter Trueno Convertible</a>
    </div>
    <div class="car-item" style="background: url(https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/image-3-e1601592524981.png?q=50&fit=crop&w=750&dpr=1.5) no-repeat  center; /*background-size: contain*/;">
        <a class="nav-link" href="/ads/individualAd?id=2">Toyota Origin</a>
    </div>
    <div class="car-item" style="background: url(https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/image-1.png?q=50&fit=crop&w=750&dpr=1.5) no-repeat  center; /*background-size: contain*/; ">
        <a class="nav-link" href="/ads/individualAd?id=1">Toyota Sera</a>
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
<%--<br><br><br><br><br><br><br>--%>
<jsp:include page="/WEB-INF/partials/footer.jsp" />
</body>


</html>