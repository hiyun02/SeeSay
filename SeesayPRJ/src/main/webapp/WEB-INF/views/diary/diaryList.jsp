<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="kopo.poly.dto.DiaryDTO" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
    List<DiaryDTO> rList = (List<DiaryDTO>) request.getAttribute("rList");
%>
<html lang="en-US" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- ===============================================-->
    <!--    Document Title-->
    <!-- ===============================================-->
    <title>Klean | Landing, Corporate &amp; Business Templatee</title>


    <!-- ===============================================-->
    <!--    Favicons-->
    <!-- ===============================================-->
    <link rel="apple-touch-icon" sizes="180x180" href="/assets/img/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/assets/img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/assets/img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="/assets/img/favicons/favicon.ico">
    <link rel="manifest" href="/assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="/assets/img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">


    <!-- ===============================================-->
    <!--    Stylesheets-->
    <!-- ===============================================-->
    <link href="/assets/css/arrow.css" rel="stylesheet">
    <link href="/assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <!-- Template Main CSS File -->
    <link href="/assets/css/style.css" rel="stylesheet">
    <link href="/assets/css/arrow.css" rel="stylesheet">
    <link href="/assets/css/button.css" rel="stylesheet">
    <link href="/assets/css/arrow.css" rel="stylesheet">
    <script src="/assets/js/jquery-3.6.0.min.js"></script>
    <link href="/assets/css/write.css" rel="stylesheet">
    <script src="/assets/js/webgazer.js"></script>

    <style type="text/css">

    </style>

    <script type="text/javascript">
        window.onload = webgazer.setGazeListener(function (data, elapsedTime) {

            if (data == null) {
                return;
            }

            var xprediction = parseInt(data.x); //these x coordinates are relative to the viewport

            var yprediction = parseInt(data.y); //these y coordinates are relative to the viewport

            var LBlink = String(data.eyeFeatures.left.blink);
            var RBlink = String(data.eyeFeatures.right.blink);

            var blink = "false";
            if (LBlink === "true" && RBlink === "true") {
                blink = "true";
            }

            const box01 = document.getElementById("#box01");
            let box01_top = parseInt(box01.getBoundingClientRect().top);
            let box01_bottom = parseInt(box01.getBoundingClientRect().bottom);
            let box01_left = parseInt(box01.getBoundingClientRect().left);
            let box01_right = parseInt(box01.getBoundingClientRect().right);

            const box02 = document.getElementById("box02");
            let box02_top = parseInt(box02.getBoundingClientRect().top);
            let box02_bottom = parseInt(box02.getBoundingClientRect().bottom);
            let box02_left = parseInt(box02.getBoundingClientRect().left);
            let box02_right = parseInt(box02.getBoundingClientRect().right);

            const box03 = document.getElementById("box03");
            let box03_top = parseInt(box03.getBoundingClientRect().top);
            let box03_bottom = parseInt(box03.getBoundingClientRect().bottom);
            let box03_left = parseInt(box03.getBoundingClientRect().left);
            let box03_right = parseInt(box03.getBoundingClientRect().right);

            const box04 = document.getElementById("box04");
            let box04_top = parseInt(box04.getBoundingClientRect().top);
            let box04_bottom = parseInt(box04.getBoundingClientRect().bottom);
            let box04_left = parseInt(box04.getBoundingClientRect().left);
            let box04_right = parseInt(box04.getBoundingClientRect().right);


            if (box01_left <= xprediction && xprediction <= box01_right && box01_top <= yprediction && yprediction <= box01_bottom && blink === "true") {
                console.log("box01 clicked");
                //함수실행
            }

            if (box02_left <= xprediction && xprediction <= box02_right && box02_top <= yprediction && yprediction <= box02_bottom && blink === "true") {
                console.log("box02 clicked");
                //함수실행
            }

            if (box03_left <= xprediction && xprediction <= box03_right && box03_top <= yprediction && yprediction <= box03_bottom && blink === "true") {
                console.log("box03 clicked");
                //함수실행
            }

            if (box04_left <= xprediction && xprediction <= box04_right && box04_top <= yprediction && yprediction <= box04_bottom && blink === "true") {
                console.log("box04 clicked");
                //함수실행
            }


            const ring = document.getElementById("ring");
            let ring_top = parseInt(ring.getBoundingClientRect().top);
            let ring_bottom = parseInt(ring.getBoundingClientRect().bottom);
            let ring_left = parseInt(ring.getBoundingClientRect().left);
            let ring_right = parseInt(ring.getBoundingClientRect().right);

            if (ring_left <= xprediction && xprediction <= ring_right && ring_top <= yprediction && yprediction <= ring_bottom && blink === "true") {
                let audio = new Audio("/assets/mp3/ball.mp3");
                audio.play();
                location.href = "/user/sendMessage";
            }


            //console.log(elapsedTime); //elapsed time is based on time since begin was called
        }).begin();
    </script>

</head>
<style>

</style>

<body>
<div id="home" onclick="location.href='/main/patient';" style="height: 10px; padding-bottom: 100px;">
    <div class="thin-ui-arrow-left-button" style="padding-left: 40%; width: 100%">
        <img src="/assets/img/main.jpg" style="float: left">

        <span class="thin-ui-arrow-left-button-content" style="float: right;">BACK</span>
    </div>
</div>
<main id="main">

    <!-- ======= Services Section ======= -->
    <section id="services" class="services" >

        <div class="container aos-init aos-animate" data-aos="fade-up">


            <div class="row gy-4">

<%--                <%for (DiaryDTO diaryDTO : rList) {%>--%>
<%--                <div class="col-lg-4 col-md-5 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">--%>
<%--                    <div class="member" id="box00">--%>
<%--                        <div class="member-img">--%>
<%--                            <img src="/assets/img/diary3.png" class="img-fluid" alt="">--%>

<%--                        </div>--%>
<%--                        <div class="member-info">--%>
<%--                            <h4><%=diaryDTO.getRegDt()%></h4>--%>
<%--                            <p><%=diaryDTO.getDiaryContent()%>--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <%}%>--%>

<%for(int i = 0; i< rList.size(); i++){%>
                <div class="col-lg-4 col-md-5 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                    <div id="box01" class="service-box blue">
                        <div><img src="/assets/img/diary3.png" class="img-fluid" alt=""></div>
                        <div class="member-info">
                            <h4><%=rList.get(i).getRegDt()%></h4>
                            <%=rList.get(i).getDiaryContent()%>
                        </div>

                    </div>
                </div>
    <%}%>

            </div>

        </div>

    </section><!-- End Services Section -->



</main>


<!-- ===============================================-->
<!--    End of Main Content-->
<!-- ===============================================-->


<!-- Vendor JS Files -->
<script src="/assets/vendor/purecounter/purecounter.js"></script>
<script src="/assets/vendor/aos/aos.js"></script>
<script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="/assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="/assets/js/main.js"></script>

<!-- ===============================================-->
<!--    JavaScripts-->
<!-- ===============================================-->

<script src="/assets/vendors/@popperjs/popper.min.js"></script>
<script src="/assets/vendors/bootstrap/bootstrap.min.js"></script>
<script src="/assets/vendors/is/is.min.js"></script>
<script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
<script src="/assets/vendors/feather-icons/feather.min.js"></script>
<script>
    feather.replace();
</script>
<script src="/assets/js/theme.js"></script>


<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800;900&amp;display=swap"
      rel="stylesheet">
</body>
<footer>
    <div class="" id="ring" style="float: right; padding-left: 5% "><img src="/assets/img/ringbell.png"></div>
        <button class="btn-hover color-1" onclick="location.href='/diary/diaryWrite'" style="width: 200px; height: 100px; float: right; font-size: 40px ;">작성하기</button>
</footer>
</html>