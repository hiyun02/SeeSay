<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="kopo.poly.dto.SentenceDTO" %>
<%@ page import="java.util.List" %>

<%
    List<SentenceDTO> rList = (List<SentenceDTO>) request.getAttribute("rList");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-US" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>FlexStart Bootstrap Template - Index</title>
    <meta content="" name="description">

    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="/assets/img/favicon.png" rel="icon">
    <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="/assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="/assets/css/style.css" rel="stylesheet">
    <script src="/assets/js/jquery-3.6.0.min.js"></script>
    <script src="/assets/js/webgazer.js"></script>

    <!-- button to back-->
    <link href="/assets/css/arrow.css" rel="stylesheet">

    <!-- =======================================================
    * Template Name: FlexStart - v1.9.0
    * Template URL: https://bootstrapmade.com/flexstart-bootstrap-startup-template/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
    <style>
        h3 {
            color: #2db6fa;
        }

    </style>

    <script type="text/javascript">

        webgazer.setGazeListener(function (data, elapsedTime) {
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

            console.log("깜빡임", blink);

            <!-- -----TTS 시작 !!!!! -->
            var voices = [];

            function setVoiceList() {
                voices = window.speechSynthesis.getVoices();
            }

            setVoiceList();
            if (window.speechSynthesis.onvoiceschanged !== undefined) {
                window.speechSynthesis.onvoiceschanged = setVoiceList;
            }

            function speech(txt) {
                console.log("읽어올 txt 는 : " + txt);
                if (!window.speechSynthesis) {
                    alert("음성 재생을 지원하지 않는 브라우저입니다. 크롬, 파이어폭스 등의 최신 브라우저를 이용하세요");
                    return;
                }
                var lang = 'ko-KR';
                var utterThis = new SpeechSynthesisUtterance(txt);
                utterThis.onend = function (event) {
                    console.log('end');
                };
                utterThis.onerror = function (event) {
                    console.log('error', event);
                };
                var voiceFound = false;
                for (var i = 0; i < voices.length; i++) {
                    console.log(voices.length);
                    if (voices[i].lang.indexOf(lang) >= 0 || voices[i].lang.indexOf(lang.replace('-', '_')) >= 0) {
                        utterThis.voice = voices[i];
                        console.log("utterThis : " + utterThis.voice);
                        voiceFound = true;
                    }
                }
                if (!voiceFound) {
                    console.log('voice not found');
                    return;
                }
                utterThis.lang = lang;
                utterThis.pitch = 1;
                utterThis.rate = 1;  //속도
                window.speechSynthesis.speak(utterThis);
            }

            <!-- -----TTS 종료 !!!!! -->

            const box01 = document.getElementById("box01");
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

            const box05 = document.getElementById("box05");
            let box05_top = parseInt(box05.getBoundingClientRect().top);
            let box05_bottom = parseInt(box05.getBoundingClientRect().bottom);
            let box05_left = parseInt(box05.getBoundingClientRect().left);
            let box05_right = parseInt(box05.getBoundingClientRect().right);

            const box06 = document.getElementById("box06");
            let box06_top = parseInt(box06.getBoundingClientRect().top);
            let box06_bottom = parseInt(box06.getBoundingClientRect().bottom);
            let box06_left = parseInt(box06.getBoundingClientRect().left);
            let box06_right = parseInt(box06.getBoundingClientRect().right);


            if (box01_left <= xprediction && xprediction <= box01_right && box01_top <= yprediction && yprediction <= box01_bottom && blink === "true") {
                let target = box01.querySelector('.audio_text').innerText;
                speech(target);
                //함수실행
            }

            if (box02_left <= xprediction && xprediction <= box02_right && box02_top <= yprediction && yprediction <= box02_bottom && blink === "true") {
                let target = box02.querySelector('.audio_text').innerText;
                console.log(target);
                speech(target);
                //함수실행
            }

            if (box03_left <= xprediction && xprediction <= box03_right && box03_top <= yprediction && yprediction <= box03_bottom && blink === "true") {
                let target = box03.querySelector('.audio_text').innerText;
                speech(target);
            }

            if (box04_left <= xprediction && xprediction <= box04_right && box04_top <= yprediction && yprediction <= box04_bottom && blink === "true") {
                let target = box04.querySelector('.audio_text').innerText;
                speech(target);
            }

            if (box05_left <= xprediction && xprediction <= box05_right && box05_top <= yprediction && yprediction <= box05_bottom && blink === "true") {
                let target = box05.querySelector('.audio_text').innerText;
                speech(target);
            }

            if (box06_left <= xprediction && xprediction <= box06_right && box06_top <= yprediction && yprediction <= box06_bottom && blink === "true") {
                let target = box06.querySelector('.audio_text').innerText;
                speech(target);
            }


            const goback = document.getElementById("goback");
            let goback_top = parseInt(goback.getBoundingClientRect().top);
            let goback_bottom = parseInt(goback.getBoundingClientRect().bottom);
            let goback_left = parseInt(goback.getBoundingClientRect().left);
            let goback_right = parseInt(goback.getBoundingClientRect().right);

            if (goback_left <= xprediction && xprediction <= goback_right && goback_top <= yprediction && yprediction <= goback_bottom && blink === "true") {
                location.href = "/main/patient";
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

        }).begin();

    </script>
</head>

<body>

<i class="bi bi-list mobile-nav-toggle"></i>

<div class="thin-ui-arrow-left-button" style="float: right; padding-bottom: 5px" id="goback" onclick="location.href='/main/patient'">
    <span class="thin-ui-arrow-left-button-content">BACK</span>
</div>

<main id="main">
    <!-- ======= Services Section ======= -->
    <section id="services" class="services">

        <div class="container" data-aos="fade-up" style="float: left; margin-left: 12%">

            <div class="row gy-3">

                <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="600">
                    <div id="box01" class="service-box blue">
                        <i class="discuss-line icon"><img src="/assets/img/sound.png"></i>
                        <h3 class="audio_text"><%=rList.get(0).getSentenceContent()%></h3>
                        <p><br><br></p>

                    </div>
                </div>

                <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="500">
                    <div id="box02" class="service-box blue">
                        <i class="discuss-line icon"><img src="/assets/img/sound.png"></i>
                        <h3 class="audio_text"><%=rList.get(1).getSentenceContent()%></h3>
                        <p><br><br></p>

                    </div>
                </div>

                <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="600">
                    <div id="box03" class="service-box blue">
                        <i class="discuss-line icon"><img src="/assets/img/sound.png"></i>
                        <h3 class="audio_text"><%=rList.get(2).getSentenceContent()%></h3>
                        <p><br><br></p>

                    </div>
                </div>
                <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="700">
                    <div id="box04" class="service-box blue">
                        <i class="discuss-line icon"><img src="/assets/img/sound.png"></i>
                        <h3 class="audio_text"><%=rList.get(3).getSentenceContent()%></h3>
                        <p><br><br></p>

                    </div>
                </div>
                <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="800">
                    <div id="box05" class="service-box blue">
                        <i class="discuss-line icon"><img src="/assets/img/sound.png"></i>
                        <h3 class="audio_text"><%=rList.get(4).getSentenceContent()%></h3>
                        <p><br><br></p>

                    </div>
                </div>
                <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="900">
                    <div id="box06" class="service-box blue">
                        <i class="discuss-line icon"><img src="/assets/img/sound.png"></i>
                        <h3 class="audio_text"><%=rList.get(5).getSentenceContent()%></h3>
                        <p><br><br></p>

                    </div>
                </div>
            </div>
        </div>
        <div class="circle" id="ring" style="float: right; padding-top: 30%; margin-right: 5%"><img
                src="/assets/img/ringbell.png"></div>


    </section><!-- End Services Section -->
</main><!-- End #main -->



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

</body>


</html>