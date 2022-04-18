<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
    <style>
        body {
            background-color: cadetblue;
        }

        .navbar-nav {
            width: 100%
        }

        @media (min-width: 568px) {
            .end {
                margin-left: auto
            }
        }

        @media (max-width: 768px) {
            #post {
                width: 100%
            }
        }

        #clicked {
            padding-top: 1px;
            padding-bottom: 1px;
            text-align: center;
            width: 100%;
            background-color: #ecb21f;
            border-color: #a88734 #9c7e31 #846a29;
            color: black;
            border-width: 1px;
            border-style: solid;
            border-radius: 13px
        }

        #profile {
            background-color: unset
        }

        #post {
            margin: 10px;
            padding: 6px;
            padding-top: 2px;
            padding-bottom: 2px;
            text-align: center;
            background-color: #ecb21f;
            border-color: #a88734 #9c7e31 #846a29;
            color: black;
            border-width: 1px;
            border-style: solid;
            border-radius: 13px;
            width: 50%
        }


        #nav-items li a,
        #profile {
            text-decoration: none;
            color: rgb(224, 219, 219);
            background-color: black
        }

        .comments {
            margin-top: 5%;
            margin-left: 20px
        }

        .darker {
            border: 1px solid seagreen;

            background-color: darkcyan;
            float: right;
            border-radius: 5px;
            padding-left: 40px;
            padding-right: 30px;
            padding-top: 10px
        }

        .comment {
            border: 1px solid green;
            background-color: #007b5e;
            float: left;
            border-radius: 5px;
            padding-left: 40px;
            padding-right: 30px;
            padding-top: 10px
        }

        .comment h4,
        .comment span,
        .darker h4,
        .darker span {
            display: inline
        }

        .comment p,
        .comment span,
        .darker p,
        .darker span {
            color: rgb(184, 183, 183)
        }

        h1,
        h4 {
            color: white;
            font-weight: bold
        }

        label {
            color: rgb(212, 208, 208)
        }

        #align-form {
            margin-top: 20px
        }

        .form-group p a {
            color: white
        }

        #checkbx {
            background-color: darkgreen;
        }

        #darker img {
            margin-right: 15px;
            position: static
        }

        .form-group input,
        .form-group textarea {
            background-color: darkgreen;
            border: #007b5e;
            border-radius: 12px;
            color: ghostwhite;
        }

        form {
            border: 1px solid darkgreen;
            background-color: #007b5e;
            border-radius: 5px;
            padding: 20px;
            color: ghostwhite;
        }

        .d-block {
            display: flex;
            flex-direction: row;
            justify-content: center;

        }

        h1 {

        }

        h1:hover {
            color: green;
        }

        .carousel-inner > .active {
            left: 35%;
        }

        .picture {
            justify-content: center;
            display: flex;
            flex-direction: row;

        }
    </style>
</head>
<body style="background-color: cadetblue ">
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<h1>About Us</h1>


<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner" role="listbox">

        <div class="carousel-item active">
            <img class="d-block picture" src="https://ca.slack-edge.com/T029BRGN0-U02MN8EJRGW-36a7ee367d5a-512"
                 alt="900x400" data-holder-rendered="true" ;
                 height: 400px;">
        </div>
        <div class="carousel-item">
            <img class="d-block picture" src="https://ca.slack-edge.com/T029BRGN0-U02NJLUGJQY-5dc3c706fd6d-512"
                 data-src=url(https://ca.slack-edge.com/T029BRGN0-U02NJLUGJQY-5dc3c706fd6d-512) alt="900x400"
                 data-holder-rendered="true" ;
                 height: 400px;">
        </div>
        <div class="carousel-item">
            <img class="d-block picture" src="https://ca.slack-edge.com/T029BRGN0-U02MUV5L150-39afa35a0e97-512"
                 data-src=url(https://ca.slack-edge.com/T029BRGN0-U02MUV5L150-39afa35a0e97-512) alt="900x400"
                 data-holder-rendered="true" ;
                 height: 400px;">
        </div>
        <div class="carousel-item">
            <img class="d-block picture" src="https://ca.slack-edge.com/T029BRGN0-U02MNG37LVC-4982245c9a26-512"
                 data-src=url(https://ca.slack-edge.com/T029BRGN0-U02MNG37LVC-4982245c9a26-512) alt="900x400"
                 data-holder-rendered="true" ;
                 height: 400px;">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<h3 className='text-center display-4'>Portfolio</h3>
<div className="scroll-container">
    <div className="gridscroll">
        <%--        <div className="card-deck">--%>
        <%--            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aliquid, architecto cupiditate doloribus, error eum ipsum iure magnam nisi omnis, porro quia sed? Id labore laborum nisi officia quisquam, recusandae!--%>
        <%--        <br>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aliquid, architecto cupiditate doloribus--%>
        <%--        </div>--%>
    </div>
</div>
<blockquote class="blockquote blockquote-reverse">
    <p class="mb-0">Programing isn't about what you know; It's about what you can figure out. </p>
    <footer class="blockquote-footer">Cris Pine
        <cite title="Source Title"></cite>
    </footer>
</blockquote>
<!-- Note a custom script is used to activate toasts:
$('.toast').toast();
-->

<%--<div class="toast fade show" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
        <strong class="mr-auto">Justin Cogner</strong>
        <small>11 mins ago</small>
        <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
            <span aria-hidden="true">×</span>
        </button>
    </div>
    <div class="toast-body">
        You can reach me at ---------
    </div>
</div>--%>

<%--<div class="toast fade show" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
        <strong class="mr-auto">Danny Turner</strong>
        <small>11 mins ago</small>
        <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
            <span aria-hidden="true">×</span>
        </button>
    </div>
    <div class="toast-body">
        You can reach me at ---------
    </div>
</div>--%>
<%--    <div class="toast fade show" role="alert" aria-live="assertive" aria-atomic="true">
        <div class="toast-header">
            <strong class="mr-auto">Therman Haynes</strong>
            <small>11 mins ago</small>
            <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button>
        </div>
        <div class="toast-body">
            You can reach me at ---------
        </div>
    </div>--%>

<%--Mini Contact Navbar--%>
<nav class="navbar navbar-expand-sm navbar-dark"><img
        src="https://ca.slack-edge.com/T029BRGN0-U02MUV5L150-39afa35a0e97-512"
        data-src=url(https://ca.slack-edge.com/T029BRGN0-U02MUV5L150-39afa35a0e97-512" width="40" height="40"
        class="d-inline-block align-top rounded-circle" alt=""> <a class="navbar-brand ml-2"
                                                                   href="https://www.linkedin.com/in/jasonmcomstock/"
                                                                   data-abc="true">Jason Comstock</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02"
            aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation"><span
            class="navbar-toggler-icon"></span></button>
    <div class="end">
        <div class="collapse navbar-collapse" id="navbarColor02">
            <ul class="navbar-nav">

                <li class="nav-item"><a class="nav-link" href="https://github.com/JMComstock" data-abc="true">Github</a>
                </li>
                <li class="nav-item "><a class="nav-link" href="https://www.linkedin.com/in/jasonmcomstock/"
                                         data-abc="true">Linkdein</a></li>
                <li class="nav-item active"><a class="nav-link mt-2" href="https://www.linkedin.com/in/jasonmcomstock/"
                                               data-abc="true" id="clicked">Contact<span
                        class="sr-only">(current)</span></a></li>
            </ul>
        </div>
    </div>
</nav>
<%--<div class="toast fade show" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
        <strong class="mr-auto">Jason Comstock</strong>
        <small>11 mins ago</small>
        <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
            <span aria-hidden="true">×</span>
        </button>
    </div>
    <div class="toast-body">
        You can reach me at ---------
    </div>
</div>--%>

<%--#2--%>
<nav class="navbar navbar-expand-sm navbar-dark"><img
        src="https://ca.slack-edge.com/T029BRGN0-U02MN8EJRGW-36a7ee367d5a-512"
        data-src=url(https://ca.slack-edge.com/T029BRGN0-U02MUV5L150-39afa35a0e97-512" width="40" height="40"
        class="d-inline-block align-top rounded-circle" alt=""> <a class="navbar-brand ml-2"
                                                                   href="https://www.linkedin.com/in/therman-haynes-4349b0198/"
                                                                   data-abc="true">Therman Haynes</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02"
            aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation"><span
            class="navbar-toggler-icon"></span></button>


    <div class="end">
        <div class="collapse navbar-collapse" id="navbarColor02">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="#" data-abc="true"></a></li>
                <li class="nav-item"><a class="nav-link" href="https://github.com/Therman116220"
                                        data-abc="true">Github</a></li>
                <li class="nav-item "><a class="nav-link" href="https://www.linkedin.com/in/therman-haynes-4349b0198/"
                                         data-abc="true">Linkedin</a></li>
                <li class="nav-item active"><a class="nav-link mt-2"
                                               href="https://www.linkedin.com/in/therman-haynes-4349b0198/"
                                               data-abc="true" id="clicked">Contact<span
                        class="sr-only">(current)</span></a></li>
            </ul>
        </div>
    </div>
</nav>
<%--3--%>

<nav class="navbar navbar-expand-sm navbar-dark"><img
        src="https://ca.slack-edge.com/T029BRGN0-U02MNG37LVC-4982245c9a26-512" width="40" height="40"
        class="d-inline-block align-top rounded-circle" alt=""> <a class="navbar-brand ml-2"
                                                                   href="https://github.com/danielleturner"
                                                                   data-abc="true">Danielle Turner</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02"
            aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation"><span
            class="navbar-toggler-icon"></span></button>


    <div class="end">
        <div class="collapse navbar-collapse" id="navbarColor02">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="#" data-abc="true"></a></li>
                <li class="nav-item"><a class="nav-link" href="https://github.com/danielleturner"
                                        data-abc="true">Github</a></li>
                <li class="nav-item "><a class="nav-link" href="https://www.linkedin.com/in/danielle-turner7/"
                                         data-abc="true">Linkedin</a></li>
                <li class="nav-item active"><a class="nav-link mt-2"
                                               href="https://www.linkedin.com/in/danielle-turner7/" data-abc="true"
                                               id="clicked">Contact<span class="sr-only">(current)</span></a></li>
            </ul>
        </div>
    </div>
</nav>
<%--Contact 4--%>
<nav class="navbar navbar-expand-sm navbar-dark"><img
        src="https://ca.slack-edge.com/T029BRGN0-U02NJLUGJQY-5dc3c706fd6d-512" width="40" height="40"
        class="d-inline-block align-top rounded-circle" alt=""> <a class="navbar-brand ml-2"
                                                                   href="https://github.com/jhconger" data-abc="true">Justin
    Hart Conger</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02"
            aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation"><span
            class="navbar-toggler-icon"></span></button>


    <div class="end">
        <div class="collapse navbar-collapse" id="navbarColor02">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="#" data-abc="true"></a></li>
                <li class="nav-item"><a class="nav-link" href="https://github.com/jhconger" data-abc="true">Github</a>
                </li>
                <li class="nav-item "><a class="nav-link" href="https://www.linkedin.com/in/jhconger/" data-abc="true">Linkedin</a>
                </li>
                <li class="nav-item active"><a class="nav-link mt-2" href="https://www.linkedin.com/in/jhconger/"
                                               data-abc="true" id="clicked">Contact<span
                        class="sr-only">(current)</span></a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- Main Body -->
<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-5 col-md-6 col-12 pb-4">
                <h1>Developers</h1>
                <div class="comment mt-4 text-justify float-left"><img
                        src="https://ca.slack-edge.com/T029BRGN0-U02MUV5L150-39afa35a0e97-512"
                        data-src=url(https://ca.slack-edge.com/T029BRGN0-U02MUV5L150-39afa35a0e97-512" alt=""
                        class="rounded-circle" width="40" height="40">
                    <h4>Jason Comstock</h4> <span> Software Developer </span> <br>
                    <p>A U.S. Marine, who after his service found a passion for coding and creative problem solving.</p>
                </div>
                <div class="text-justify darker mt-4 float-right"><img
                        src="https://ca.slack-edge.com/T029BRGN0-U02NJLUGJQY-5dc3c706fd6d-512" alt=""
                        class="rounded-circle" width="40" height="40">
                    <h4>Justin Conger</h4> <span> Software Developer, Musician </span> <br>
                    <p>An Army Solder, who after his service found a passion for coding and problem solving with
                        ninja-nuity.</p>
                </div>
                <div class="comment mt-4 text-justify"><img
                        src="https://ca.slack-edge.com/T029BRGN0-U02MN8EJRGW-36a7ee367d5a-512"
                        data-src=url(https://ca.slack-edge.com/T029BRGN0-U02MUV5L150-39afa35a0e97-512" alt=""
                        class="rounded-circle" width="40" height="40">
                    <h4>Therman Haynes</h4> <span> Software Developer </span> <br>
                    <p>A life learner of tech who after a career in networking found a passion for many sides of the
                        I.T. world.</p>
                </div>


                <div class="darker mt-4 text-justify"><img
                        src="https://ca.slack-edge.com/T029BRGN0-U02MNG37LVC-4982245c9a26-512" alt=""
                        class="rounded-circle" width="40" height="40">
                    <h4>Danielle Turner</h4> <span> Software Developer </span> <br>
                    <p>A Navy Veteran, who after completing service found an aptitude for problem solving through
                        software development.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-5 col-sm-4 offset-md-1 offset-sm-1 col-12 mt-4">
                <form id="algin-form">
                    <div class="form-group">
                        <h4>Leave a comment</h4> <label>Message</label> <textarea name="msg" id="" msg cols="30"
                                                                                  rows="5" class="form-control"
                                                                                  style="background-color: black;"></textarea>
                    </div>
                    <div class="form-group"><label>Name</label> <input type="text" name="name" id="fullname"
                                                                       class="form-control"></div>
                    <div class="form-group"><label for="email">Email</label> <input type="text" name="email" id="email"
                                                                                    class="form-control"></div>
                    <div class="form-group">
                        <p class="text-secondary">If you have an <a href="#" class="alert-link">account with us</a> your
                            address will be used to display your profile picture.</p>
                    </div>
                    <div class="form-inline"><input type="checkbox" name="check" id="checkbx" class="mr-1"> <label>Subscribe
                        me to the newslettter</label></div>
                    <div class="form-group">
                        <button type="button" id="post" class="btn">Comment</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<script>
    // $("#post").click(function () {
    //     $('body').append(" <div class="darker mt-4 text-justify"> <img src="https://ca.slack-edge.com/T029BRGN0-U02MNG37LVC-4982245c9a26-512" alt="" class="rounded-circle" width="40" height="40">
    //         <h4>Danielle Turner</h4> <span> Software Developer </span> <br>
    //         <p>A Navy Veteran, who after completing service found an aptitude for problem solving through software development.</p>
    //         </div>")
    // });


</script>

</body>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
</html>