<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-US" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>SeeSay</title>
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
    <link href="/assets/css/style.css" rel="stylesheet"/>
    <link href="/assets/css/theme.css" rel="stylesheet"/>

    <link href="/assets/css/arrow.css" rel="stylesheet"/>


    <script src="/assets/js/isotope.pkgd.min.js"></script>
    <script src="/assets/js/jquery-3.6.0.min.js"></script>
    <script src="/assets/js/webgazer.js"></script>

    <script type="text/javascript">

        $(document).ready(
            function() {
                console.log("custom Blink event start!");
                document.body.addEventListener("Blink", function(event) {
                        alert("triggered Blink Event");
                    }
                )
            }
        )

        $(document).ready(function () {
            $('.list').click(function () {
                $(this).addClass('active').sibling().removeClass('active')
            })
        })


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
                if (!window.speechSynthesis) {
                    alert("음성 재생을 지원하지 않는 브라우저입니다. 크롬, 파이어폭스 등의 최신 브라우저를 이용하세요");
                    return;
                }
                var lang = 'ko-KR';
                var utterThis = new SpeechSynthesisUtterance(txt);
                utterThis.onend = function (event) {
                    console.log('end , ' + blink);
                };
                utterThis.onerror = function (event) {
                    console.log('error', event);
                };
                var voiceFound = false;
                for (var i = 0; i < voices.length; i++) {
                    if (voices[i].lang.indexOf(lang) >= 0 || voices[i].lang.indexOf(lang.replace('-', '_')) >= 0) {
                        utterThis.voice = voices[i];
                        voiceFound = true;
                    }
                }
                if (!voiceFound) {
                    console.log('voice not found');
                    return;
                }
                utterThis.lang = lang;
                utterThis.pitch = 1;
                utterThis.rate = 0.8;  //속도
                window.speechSynthesis.speak(utterThis);
            }

            <!-- -----TTS 종료 !!!!! -->

            const ache = document.getElementById("ache");
            let ache_top = parseInt(ache.getBoundingClientRect().top);
            let ache_bottom = parseInt(ache.getBoundingClientRect().bottom);
            let ache_left = parseInt(ache.getBoundingClientRect().left);
            let ache_right = parseInt(ache.getBoundingClientRect().right);

            const breath = document.getElementById("breath");
            let breath_top = parseInt(breath.getBoundingClientRect().top);
            let breath_bottom = parseInt(breath.getBoundingClientRect().bottom);
            let breath_left = parseInt(breath.getBoundingClientRect().left);
            let breath_right = parseInt(breath.getBoundingClientRect().right);

            const eat = document.getElementById("eat");
            let eat_top = parseInt(eat.getBoundingClientRect().top);
            let eat_bottom = parseInt(eat.getBoundingClientRect().bottom);
            let eat_left = parseInt(eat.getBoundingClientRect().left);
            let eat_right = parseInt(eat.getBoundingClientRect().right);

            const poo = document.getElementById("poo");
            let poo_top = parseInt(poo.getBoundingClientRect().top);
            let poo_bottom = parseInt(poo.getBoundingClientRect().bottom);
            let poo_left = parseInt(poo.getBoundingClientRect().left);
            let poo_right = parseInt(poo.getBoundingClientRect().right);

            const feel = document.getElementById("feel");
            let feel_top = parseInt(feel.getBoundingClientRect().top);
            let feel_bottom = parseInt(feel.getBoundingClientRect().bottom);
            let feel_left = parseInt(feel.getBoundingClientRect().left);
            let feel_right = parseInt(feel.getBoundingClientRect().right);

            if (ache_left <= xprediction && xprediction <= ache_right && ache_top <= yprediction && yprediction <= ache_bottom && blink === "true") {
                $('.service-box').not('.ache').hide('500');
                $('.service-box').filter('.ache').show('500');
                console.log("ache blinked");
                //함수실행
            }

            if (breath_left <= xprediction && xprediction <= breath_right && breath_top <= yprediction && yprediction <= breath_bottom && blink === "true") {
                $('.service-box').not('.breath').hide('500');
                $('.service-box').filter('.breath').show('500');
                console.log("breath blinked");
                //함수실행
            }

            if (eat_left <= xprediction && xprediction <= eat_right && eat_top <= yprediction && yprediction <= eat_bottom && blink === "true") {
                $('.service-box').not('.eat').hide('500');
                $('.service-box').filter('.eat').show('500');
                console.log("eat blinked");
                //함수실행
            }

            if (poo_left <= xprediction && xprediction <= poo_right && poo_top <= yprediction && yprediction <= poo_bottom && blink === "true") {
                $('.service-box').not('.poo').hide('500');
                $('.service-box').filter('.poo').show('500');
                console.log("poo blinked");
                //함수실행
            }

            if (feel_left <= xprediction && xprediction <= feel_right && feel_top <= yprediction && yprediction <= feel_bottom && blink === "true") {
                $('.service-box').not('.feel').hide('500');
                $('.service-box').filter('.feel').show('500');
                console.log("feel blinked");
                //함수실행
            }

            const ache01 = document.getElementById("ache01");
            let ache01_top = parseInt(ache01.getBoundingClientRect().top);
            let ache01_bottom = parseInt(ache01.getBoundingClientRect().bottom);
            let ache01_left = parseInt(ache01.getBoundingClientRect().left);
            let ache01_right = parseInt(ache01.getBoundingClientRect().right);

            const ache02 = document.getElementById("ache02");
            let ache02_top = parseInt(ache02.getBoundingClientRect().top);
            let ache02_bottom = parseInt(ache02.getBoundingClientRect().bottom);
            let ache02_left = parseInt(ache02.getBoundingClientRect().left);
            let ache02_right = parseInt(ache02.getBoundingClientRect().right);

            const ache03 = document.getElementById("ache03");
            let ache03_top = parseInt(ache03.getBoundingClientRect().top);
            let ache03_bottom = parseInt(ache03.getBoundingClientRect().bottom);
            let ache03_left = parseInt(ache03.getBoundingClientRect().left);
            let ache03_right = parseInt(ache03.getBoundingClientRect().right);

            if (ache01_left <= xprediction && xprediction <= ache01_right && ache01_top <= yprediction && yprediction <= ache01_bottom && blink === "true") {
                let target = ache01.querySelector('.audio_text').innerText;
                speech(target);
            }
            if (ache02_left <= xprediction && xprediction <= ache02_right && ache02_top <= yprediction && yprediction <= ache02_bottom && blink === "true") {
                let target = ache02.querySelector('.audio_text').innerText;
                speech(target);
            }
            if (ache03_left <= xprediction && xprediction <= ache03_right && ache03_top <= yprediction && yprediction <= ache03_bottom && blink === "true") {
                let target = ache03.querySelector('.audio_text').innerText;
                speech(target);
            }

            const breath01 = document.getElementById("breath01");
            let breath01_top = parseInt(breath01.getBoundingClientRect().top);
            let breath01_bottom = parseInt(breath01.getBoundingClientRect().bottom);
            let breath01_left = parseInt(breath01.getBoundingClientRect().left);
            let breath01_right = parseInt(breath01.getBoundingClientRect().right);

            const breath02 = document.getElementById("breath02");
            let breath02_top = parseInt(breath02.getBoundingClientRect().top);
            let breath02_bottom = parseInt(breath02.getBoundingClientRect().bottom);
            let breath02_left = parseInt(breath02.getBoundingClientRect().left);
            let breath02_right = parseInt(breath02.getBoundingClientRect().right);

            const breath03 = document.getElementById("breath03");
            let breath03_top = parseInt(breath03.getBoundingClientRect().top);
            let breath03_bottom = parseInt(breath03.getBoundingClientRect().bottom);
            let breath03_left = parseInt(breath03.getBoundingClientRect().left);
            let breath03_right = parseInt(breath03.getBoundingClientRect().right);

            if (breath01_left <= xprediction && xprediction <= breath01_right && breath01_top <= yprediction && yprediction <= breath01_bottom && blink === "true") {
                let target = breath01.querySelector('.audio_text').innerText;
                speech(target);
            }
            if (breath02_left <= xprediction && xprediction <= breath02_right && breath02_top <= yprediction && yprediction <= breath02_bottom && blink === "true") {
                let target = breath02.querySelector('.audio_text').innerText;
                speech(target);
            }
            if (breath03_left <= xprediction && xprediction <= breath03_right && breath03_top <= yprediction && yprediction <= breath03_bottom && blink === "true") {
                let target = breath03.querySelector('.audio_text').innerText;
                speech(target);
            }


            const eat01 = document.getElementById("eat01");
            let eat01_top = parseInt(eat01.getBoundingClientRect().top);
            let eat01_bottom = parseInt(eat01.getBoundingClientRect().bottom);
            let eat01_left = parseInt(eat01.getBoundingClientRect().left);
            let eat01_right = parseInt(eat01.getBoundingClientRect().right);

            const eat02 = document.getElementById("eat02");
            let eat02_top = parseInt(eat02.getBoundingClientRect().top);
            let eat02_bottom = parseInt(eat02.getBoundingClientRect().bottom);
            let eat02_left = parseInt(eat02.getBoundingClientRect().left);
            let eat02_right = parseInt(eat02.getBoundingClientRect().right);

            const eat03 = document.getElementById("eat03");
            let eat03_top = parseInt(eat03.getBoundingClientRect().top);
            let eat03_bottom = parseInt(eat03.getBoundingClientRect().bottom);
            let eat03_left = parseInt(eat03.getBoundingClientRect().left);
            let eat03_right = parseInt(eat03.getBoundingClientRect().right);

            if (eat01_left <= xprediction && xprediction <= eat01_right && eat01_top <= yprediction && yprediction <= eat01_bottom && blink === "true") {
                let target = eat01.querySelector('.audio_text').innerText;
                speech(target);
            }

            if (eat02_left <= xprediction && xprediction <= eat02_right && eat02_top <= yprediction && yprediction <= eat02_bottom && blink === "true") {
                let target = eat02.querySelector('.audio_text').innerText;
                speech(target);
            }
            if (eat03_left <= xprediction && xprediction <= eat03_right && eat03_top <= yprediction && yprediction <= eat03_bottom && blink === "true") {
                let target = eat03.querySelector('.audio_text').innerText;
                speech(target);
            }


            const poo01 = document.getElementById("poo01");
            let poo01_top = parseInt(poo01.getBoundingClientRect().top);
            let poo01_bottom = parseInt(poo01.getBoundingClientRect().bottom);
            let poo01_left = parseInt(poo01.getBoundingClientRect().left);
            let poo01_right = parseInt(poo01.getBoundingClientRect().right);

            const poo02 = document.getElementById("poo02");
            let poo02_top = parseInt(poo02.getBoundingClientRect().top);
            let poo02_bottom = parseInt(poo02.getBoundingClientRect().bottom);
            let poo02_left = parseInt(poo02.getBoundingClientRect().left);
            let poo02_right = parseInt(poo02.getBoundingClientRect().right);

            const poo03 = document.getElementById("poo03");
            let poo03_top = parseInt(poo03.getBoundingClientRect().top);
            let poo03_bottom = parseInt(poo03.getBoundingClientRect().bottom);
            let poo03_left = parseInt(poo03.getBoundingClientRect().left);
            let poo03_right = parseInt(poo03.getBoundingClientRect().right);

            if (poo01_left <= xprediction && xprediction <= poo01_right && poo01_top <= yprediction && yprediction <= poo01_bottom && blink === "true") {
                let target = poo01.querySelector('.audio_text').innerText;
                speech(target);
            }
            if (poo02_left <= xprediction && xprediction <= poo02_right && poo02_top <= yprediction && yprediction <= poo02_bottom && blink === "true") {
                let target = poo02.querySelector('.audio_text').innerText;
                speech(target);
            }

            if (poo03_left <= xprediction && xprediction <= poo03_right && poo03_top <= yprediction && yprediction <= poo03_bottom && blink === "true") {
                let target = poo03.querySelector('.audio_text').innerText;
                speech(target);
            }

            const feel01 = document.getElementById("feel01");
            let feel01_top = parseInt(feel01.getBoundingClientRect().top);
            let feel01_bottom = parseInt(feel01.getBoundingClientRect().bottom);
            let feel01_left = parseInt(feel01.getBoundingClientRect().left);
            let feel01_right = parseInt(feel01.getBoundingClientRect().right);

            const feel02 = document.getElementById("feel02");
            let feel02_top = parseInt(feel02.getBoundingClientRect().top);
            let feel02_bottom = parseInt(feel02.getBoundingClientRect().bottom);
            let feel02_left = parseInt(feel02.getBoundingClientRect().left);
            let feel02_right = parseInt(feel02.getBoundingClientRect().right);

            if (feel01_left <= xprediction && xprediction <= feel01_right && feel01_top <= yprediction && yprediction <= feel01_bottom && blink === "true") {
                let target = feel01.querySelector('.audio_text').innerText;
                speech(target);
            }

            if (feel02_left <= xprediction && xprediction <= feel02_right && feel02_top <= yprediction && yprediction <= feel02_bottom && blink === "true") {
                let target = feel02.querySelector('.audio_text').innerText;
                speech(target);
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

            const back = document.getElementById("back");
            let back_top = parseInt(back.getBoundingClientRect().top);
            let back_bottom = parseInt(back.getBoundingClientRect().bottom);
            let back_left = parseInt(back.getBoundingClientRect().left);
            let back_right = parseInt(back.getBoundingClientRect().right);

            if (back_left <= xprediction && xprediction <= back_right && back_top <= yprediction && yprediction <= back_bottom && blink === "true") {
                location.href = "/main/patient";
            }

            //console.log(elapsedTime); //elapsed time is based on time since begin was called
        }).begin();
    </script>

    <style>
        * {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', Sans-serif;
            text-align: center;

        }

        header {
            padding: 10px;
            width: 100%;
            margin: 20px auto;
        }

        ul {

            display: flex;

            margin-left: 20%;
            cursor: pointer;
            font-size: 25px;
        }

        ul li {
            list-style: none;
            background: #6090F2;
            padding: 50px 50px;
            margin: 10px;
            letter-spacing: 10px;
            cursor: pointer;

        }

        ul li.active {
            background: #03a9f4;
            color: #e0a800;

        }

        .service-box {
            width: 33%;
            font-size: 20px;
            background: white;
        }


    </style>

</head>


<body>

<!-- ======= Header ======= -->
<header id="header" class="header fixed-top">

    <i class="bi bi-list mobile-nav-toggle"></i>


</header><!-- End Header -->
<main id="main">
    <header class="section-header">
        <div id="back" class="thin-ui-arrow-left-button" style="float: right; padding-left: 10px">
            <span class="thin-ui-arrow-left-button-content">BACK</span>
        </div>
        <ul>
            <li class="list" data-filter="All" style="display: none;">All</li>
            <li class="list" data-filter="ache" id="ache"><span style="color: white"> <b>통증과 가려움증</b></span></li>
            <li class="list" data-filter="breath" id="breath"><span style="color: white"><b>호흡</b></span></li>
            <li class="list" data-filter="eat" id="eat"><span style="color: white"><b>식사</b></span></li>
            <li class="list" data-filter="poo" id="poo"><span style="color: white"><b>대소변</b></span></li>
            <li class="list" data-filter="feel" id="feel"><span style="color: white"><b>기분</b></span></li>
        </ul>

    </header>

    <!-- ======= Pricing Section ======= -->
    <section id="services" class="services">
        <!---->


        <div class="row gy-3">
            <div class="service-box ache" id="ache01">
                <div><img src="/assets/img/ache/ga.png"></div>
                <p>
                <h3 class="audio_text">몸이 가려워요</h3>
            </div>


            <div class="service-box breath" id="breath01">
                <div><img src="/assets/img/Breath/br1.png">
                    <p>
                    <h3 class="audio_text">가래 빼주세요</h3></div>
            </div>

            <div class="service-box eat" id="eat01">
                <div><img src="/assets/img/eat/123.png">
                    <p>
                    <h3 class="audio_text">배가 아파요</h3></div>
            </div>
            <div class="service-box feel" id="feel01">
                <div><img src="/assets/img/Feel/cold.png">
                    <p>
                    <h3 class="audio_text">몸이 추워요</h3></div>
            </div>
            <div class="service-box poo" id="poo01">
                <div><img src="/assets/img/poo/poo.png">
                    <p>
                    <h3 class="audio_text">대변이 마려워요</h3></div>
            </div>
            <div class="service-box ache" id="ache02">
                <div><img src="/assets/img/ache/hurt.png">
                    <p>
                    <h3 class="audio_text">몸이 아파요</h3></div>
            </div>
            <div class="service-box breath" id="breath02">
                <div><img src="/assets/img/Breath/br2.png">
                    <p>
                    <h3 class="audio_text">숨쉬기 힘들어요</h3></div>
            </div>
            <div class="service-box eat" id="eat02">
                <div><img src="/assets/img/eat/hungry.png">
                    <p>
                    <h3 class="audio_text">배가 고파요</h3></div>
            </div>
            <div class="service-box feel" id="feel02">
                <div><img src="/assets/img/Feel/hot.png">
                    <p>
                    <h3 class="audio_text">몸이 더워요</h3></div>
            </div>
            <div class="service-box poo" id="poo02">
                <div><img src="/assets/img/poo/pee.png">
                    <p>
                    <h3 class="audio_text">소변이 마려워요</h3></div>
            </div>
            <div class="service-box ache" id="ache03">
                <div><img src="/assets/img/ache/numb.png">
                    <p>
                    <h3 class="audio_text">몸이 저려요</h3></div>
            </div>
            <div class="service-box breath" id="breath03">
                <div><img src="/assets/img/Breath/br3.png">
                    <p>
                    <h3 class="audio_text">침이 나와요</h3></div>
            </div>
            <div class="service-box eat" id="eat03">
                <div><img src="/assets/img/eat/water.png">
                    <p>
                    <h3 class="audio_text">물을 주세요</h3></div>
            </div>
            <div class="service-box poo" id="poo03">
                <div><img src="/assets/img/poo/poo1.png">
                    <p>
                    <h3 class="audio_text">대변이 안나와요</h3></div>
            </div>


        </div>

    </section><!-- End Pricing Section -->

</main><!-- End #main -->


<div><img
        src="/assets/img/ringbell.png" id="ring" style="float: right"></div>


<!-- Vendor JS Files -->
<script src="/assets/vendor/purecounter/purecounter.js"></script>
<script src="/assets/vendor/aos/aos.js"></script>
<script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="/assets/vendor/php-email-form/validate.js"></script>


<!— Template Main JS File —>
<script src="/assets/js/main.js"></script>
<script
        src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
        crossorigin="anonymous"></script>

</body>

</html>