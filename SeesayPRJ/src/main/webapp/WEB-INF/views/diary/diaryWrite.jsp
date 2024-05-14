<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

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
    <link href="/assets/css/write.css" rel="stylesheet">
    <link href="/assets/css/arrow.css" rel="stylesheet">
    <link href="/assets/css/diary.css" rel="stylesheet">
    <link href="/assets/css/button.css" rel="stylesheet">
    <link href="/assets/css/arrow.css" rel="stylesheet">

    <!-- =======================================================
    * Template Name: FlexStart - v1.9.0
    * Template URL: https://bootstrapmade.com/flexstart-bootstrap-startup-template/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
    <style>

        .services {
            height: 55%;
            margin: 0px;
            padding: 0px;
        }

        img {
            display: block;
            margin: auto;
            margin-top: 10px;
            margin-bottom: 20px;
        }

        ul {
            list-style: none;
        }

    </style>

    <script src="/assets/js/jquery-3.6.0.min.js"></script>

    <script src="/assets/js/webgazer.js"></script>
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

            const li01 = document.getElementById("li01");
            let li01_top = parseInt(li01.getBoundingClientRect().top);
            let li01_bottom = parseInt(li01.getBoundingClientRect().bottom);
            let li01_left = parseInt(li01.getBoundingClientRect().left);
            let li01_right = parseInt(li01.getBoundingClientRect().right);

            const li02 = document.getElementById("li02");
            let li02_top = parseInt(li02.getBoundingClientRect().top);
            let li02_bottom = parseInt(li02.getBoundingClientRect().bottom);
            let li02_left = parseInt(li02.getBoundingClientRect().left);
            let li02_right = parseInt(li02.getBoundingClientRect().right);

            const li03 = document.getElementById("li03");
            let li03_top = parseInt(li03.getBoundingClientRect().top);
            let li03_bottom = parseInt(li03.getBoundingClientRect().bottom);
            let li03_left = parseInt(li03.getBoundingClientRect().left);
            let li03_right = parseInt(li03.getBoundingClientRect().right);

            const li04 = document.getElementById("li04");
            let li04_top = parseInt(li04.getBoundingClientRect().top);
            let li04_bottom = parseInt(li04.getBoundingClientRect().bottom);
            let li04_left = parseInt(li04.getBoundingClientRect().left);
            let li04_right = parseInt(li04.getBoundingClientRect().right);

            const li05 = document.getElementById("li05");
            let li05_top = parseInt(li05.getBoundingClientRect().top);
            let li05_bottom = parseInt(li05.getBoundingClientRect().bottom);
            let li05_left = parseInt(li05.getBoundingClientRect().left);
            let li05_right = parseInt(li05.getBoundingClientRect().right);

            const li06 = document.getElementById("li06");
            let li06_top = parseInt(li06.getBoundingClientRect().top);
            let li06_bottom = parseInt(li06.getBoundingClientRect().bottom);
            let li06_left = parseInt(li06.getBoundingClientRect().left);
            let li06_right = parseInt(li06.getBoundingClientRect().right);

            const li07 = document.getElementById("li07");
            let li07_top = parseInt(li07.getBoundingClientRect().top);
            let li07_bottom = parseInt(li07.getBoundingClientRect().bottom);
            let li07_left = parseInt(li07.getBoundingClientRect().left);
            let li07_right = parseInt(li07.getBoundingClientRect().right);

            const li08 = document.getElementById("li08");
            let li08_top = parseInt(li08.getBoundingClientRect().top);
            let li08_bottom = parseInt(li08.getBoundingClientRect().bottom);
            let li08_left = parseInt(li08.getBoundingClientRect().left);
            let li08_right = parseInt(li08.getBoundingClientRect().right);

            const li09 = document.getElementById("li09");
            let li09_top = parseInt(li09.getBoundingClientRect().top);
            let li09_bottom = parseInt(li09.getBoundingClientRect().bottom);
            let li09_left = parseInt(li09.getBoundingClientRect().left);
            let li09_right = parseInt(li09.getBoundingClientRect().right);

            const li10 = document.getElementById("li10");
            let li10_top = parseInt(li10.getBoundingClientRect().top);
            let li10_bottom = parseInt(li10.getBoundingClientRect().bottom);
            let li10_left = parseInt(li10.getBoundingClientRect().left);
            let li10_right = parseInt(li10.getBoundingClientRect().right);

            const li11 = document.getElementById("li11");
            let li11_top = parseInt(li11.getBoundingClientRect().top);
            let li11_bottom = parseInt(li11.getBoundingClientRect().bottom);
            let li11_left = parseInt(li11.getBoundingClientRect().left);
            let li11_right = parseInt(li11.getBoundingClientRect().right);

            const li12 = document.getElementById("li12");
            let li12_top = parseInt(li12.getBoundingClientRect().top);
            let li12_bottom = parseInt(li12.getBoundingClientRect().bottom);
            let li12_left = parseInt(li12.getBoundingClientRect().left);
            let li12_right = parseInt(li12.getBoundingClientRect().right);

            const li13 = document.getElementById("li13");
            let li13_top = parseInt(li13.getBoundingClientRect().top);
            let li13_bottom = parseInt(li13.getBoundingClientRect().bottom);
            let li13_left = parseInt(li13.getBoundingClientRect().left);
            let li13_right = parseInt(li13.getBoundingClientRect().right);

            const li14 = document.getElementById("li14");
            let li14_top = parseInt(li14.getBoundingClientRect().top);
            let li14_bottom = parseInt(li14.getBoundingClientRect().bottom);
            let li14_left = parseInt(li14.getBoundingClientRect().left);
            let li14_right = parseInt(li14.getBoundingClientRect().right);

            const li15 = document.getElementById("li15");
            let li15_top = parseInt(li15.getBoundingClientRect().top);
            let li15_bottom = parseInt(li15.getBoundingClientRect().bottom);
            let li15_left = parseInt(li15.getBoundingClientRect().left);
            let li15_right = parseInt(li15.getBoundingClientRect().right);

            const li16 = document.getElementById("li16");
            let li16_top = parseInt(li16.getBoundingClientRect().top);
            let li16_bottom = parseInt(li16.getBoundingClientRect().bottom);
            let li16_left = parseInt(li16.getBoundingClientRect().left);
            let li16_right = parseInt(li16.getBoundingClientRect().right);

            const li17 = document.getElementById("li17");
            let li17_top = parseInt(li17.getBoundingClientRect().top);
            let li17_bottom = parseInt(li17.getBoundingClientRect().bottom);
            let li17_left = parseInt(li17.getBoundingClientRect().left);
            let li17_right = parseInt(li17.getBoundingClientRect().right);

            const li18 = document.getElementById("li18");
            let li18_top = parseInt(li18.getBoundingClientRect().top);
            let li18_bottom = parseInt(li18.getBoundingClientRect().bottom);
            let li18_left = parseInt(li18.getBoundingClientRect().left);
            let li18_right = parseInt(li18.getBoundingClientRect().right);

            if (li01_left <= xprediction && xprediction <= li01_right && li01_top <= yprediction && yprediction <= li01_bottom && blink === "true") {
                if($("#radio01").is(":checked")) {
                    $("#radio01").prop("checked", false);
                } else {
                    $("#radio01").prop("checked", true);
                }
                console.log("li01 blinked");
            }

            if (li02_left <= xprediction && xprediction <= li02_right && li02_top <= yprediction && yprediction <= li02_bottom && blink === "true") {
                if($("#radio02").is(":checked")) {
                    $("#radio02").prop("checked", false);
                } else {
                    $("#radio02").prop("checked", true);
                }
                console.log("li02 blinked");
            }

            if (li03_left <= xprediction && xprediction <= li03_right && li03_top <= yprediction && yprediction <= li03_bottom && blink === "true") {
                if($("#radio03").is(":checked")) {
                    $("#radio03").prop("checked", false);
                } else {
                    $("#radio03").prop("checked", true);
                }
                console.log("li03 blinked");
            }

            if (li04_left <= xprediction && xprediction <= li04_right && li04_top <= yprediction && yprediction <= li04_bottom && blink === "true") {
                if($("#radio04").is(":checked")) {
                    $("#radio04").prop("checked", false);
                } else {
                    $("#radio04").prop("checked", true);
                }
                console.log("li04 blinked");
            }

            if (li05_left <= xprediction && xprediction <= li05_right && li05_top <= yprediction && yprediction <= li05_bottom && blink === "true") {
                if($("#radio05").is(":checked")) {
                    $("#radio05").prop("checked", false);
                } else {
                    $("#radio05").prop("checked", true);
                }
                console.log("li05 blinked");
            }

            if (li06_left <= xprediction && xprediction <= li06_right && li06_top <= yprediction && yprediction <= li06_bottom && blink === "true") {
                if($("#radio06").is(":checked")) {
                    $("#radio06").prop("checked", false);
                } else {
                    $("#radio06").prop("checked", true);
                }
                console.log("li06 blinked");
            }

            if (li07_left <= xprediction && xprediction <= li07_right && li07_top <= yprediction && yprediction <= li07_bottom && blink === "true") {
                if($("#radio07").is(":checked")) {
                    $("#radio07").prop("checked", false);
                } else {
                    $("#radio07").prop("checked", true);
                }
                console.log("li07 blinked");
            }

            if (li08_left <= xprediction && xprediction <= li08_right && li08_top <= yprediction && yprediction <= li08_bottom && blink === "true") {
                if($("#radio08").is(":checked")) {
                    $("#radio08").prop("checked", false);
                } else {
                    $("#radio08").prop("checked", true);
                }
                console.log("li08 blinked");
            }

            if (li09_left <= xprediction && xprediction <= li09_right && li09_top <= yprediction && yprediction <= li09_bottom && blink === "true") {
                if($("#radio09").is(":checked")) {
                    $("#radio09").prop("checked", false);
                } else {
                    $("#radio09").prop("checked", true);
                }
                console.log("li09 blinked");
            }

            if (li10_left <= xprediction && xprediction <= li10_right && li10_top <= yprediction && yprediction <= li10_bottom && blink === "true") {
                if($("#radio10").is(":checked")) {
                    $("#radio10").prop("checked", false);
                } else {
                    $("#radio10").prop("checked", true);
                }
                console.log("li10 blinked");
            }

            if (li11_left <= xprediction && xprediction <= li11_right && li11_top <= yprediction && yprediction <= li11_bottom && blink === "true") {
                if($("#radio11").is(":checked")) {
                    $("#radio11").prop("checked", false);
                } else {
                    $("#radio11").prop("checked", true);
                }
                console.log("li11 blinked");
            }

            if (li12_left <= xprediction && xprediction <= li12_right && li12_top <= yprediction && yprediction <= li12_bottom && blink === "true") {
                if($("#radio12").is(":checked")) {
                    $("#radio12").prop("checked", false);
                } else {
                    $("#radio12").prop("checked", true);
                }
                console.log("li12 blinked");
            }

            if (li13_left <= xprediction && xprediction <= li13_right && li13_top <= yprediction && yprediction <= li13_bottom && blink === "true") {
                if($("#radio13").is(":checked")) {
                    $("#radio13").prop("checked", false);
                } else {
                    $("#radio13").prop("checked", true);
                }
                console.log("li13 blinked");
            }

            if (li14_left <= xprediction && xprediction <= li14_right && li14_top <= yprediction && yprediction <= li14_bottom && blink === "true") {
                if($("#radio14").is(":checked")) {
                    $("#radio14").prop("checked", false);
                } else {
                    $("#radio14").prop("checked", true);
                }
                console.log("li14 blinked");
            }

            if (li15_left <= xprediction && xprediction <= li15_right && li15_top <= yprediction && yprediction <= li15_bottom && blink === "true") {
                if($("#radio15").is(":checked")) {
                    $("#radio15").prop("checked", false);
                } else {
                    $("#radio15").prop("checked", true);
                }
                console.log("li15 blinked");
            }

            if (li16_left <= xprediction && xprediction <= li16_right && li16_top <= yprediction && yprediction <= li16_bottom && blink === "true") {
                if($("#radio16").is(":checked")) {
                    $("#radio16").prop("checked", false);
                } else {
                    $("#radio16").prop("checked", true);
                }
                console.log("li16 blinked");
            }

            if (li17_left <= xprediction && xprediction <= li17_right && li17_top <= yprediction && yprediction <= li17_bottom && blink === "true") {
                if($("#radio17").is(":checked")) {
                    $("#radio17").prop("checked", false);
                } else {
                    $("#radio17").prop("checked", true);
                }
                console.log("li17 blinked");
            }

            if (li18_left <= xprediction && xprediction <= li18_right && li18_top <= yprediction && yprediction <= li18_bottom && blink === "true") {
                if($("#radio18").is(":checked")) {
                    $("#radio18").prop("checked", false);
                } else {
                    $("#radio18").prop("checked", true);
                }
                console.log("li18 blinked");
            }


            const ring = document.getElementById("ring");
            let ring_top = parseInt(ring.getBoundingClientRect().top);
            let ring_bottom = parseInt(ring.getBoundingClientRect().bottom);
            let ring_left = parseInt(ring.getBoundingClientRect().left);
            let ring_right = parseInt(ring.getBoundingClientRect().right);

            if (ring_left <= xprediction && xprediction <= ring_right && ring_top <= yprediction && yprediction <= ring_bottom && blink === "true") {
                let audio = new Audio("/assets/mp3/ball.mp3");
                audio.play();
                //location.href = "/user/sendMessage";
            }

            const home = document.getElementById("home");
            let home_top = parseInt(home.getBoundingClientRect().top);
            let home_bottom = parseInt(home.getBoundingClientRect().bottom);
            let home_left = parseInt(home.getBoundingClientRect().left);
            let home_right = parseInt(home.getBoundingClientRect().right);

            if (home_left <= xprediction && xprediction <= home_right && home_top <= yprediction && yprediction <= home_bottom && blink === "true") {
                console.log("home clicked");
                //location.href = "/main/patient";
            }

            const write = document.getElementById("write");
            let write_top = parseInt(write.getBoundingClientRect().top);
            let write_bottom = parseInt(write.getBoundingClientRect().bottom);
            let write_left = parseInt(write.getBoundingClientRect().left);
            let write_right = parseInt(write.getBoundingClientRect().right);

            if (write_left <= xprediction && xprediction <= write_right && write_top <= yprediction && yprediction <= write_bottom && blink === "true") {
                console.log("write clicked");
                //location.href = "/diary/diaryWriteProc";
            }


            //console.log(elapsedTime); //elapsed time is based on time since begin was called
        }).begin();
    </script>

</head>

<body>

<div style="height: 10px; padding-bottom: 150px;">
    <div class="thin-ui-arrow-left-button" style="padding-left: 40%; width: 100%">
        <img src="/assets/img/main.jpg" style="float: left">

        <span id="home" class="thin-ui-arrow-left-button-content" style="float: right;">BACK</span>
    </div>
</div>
<form action="/diary/diaryWriteProc" method="post">

    <main id="main">

        <!-- ======= Services Section ======= -->
        <section id="services" class="services">

            <label class="statement" style="font-size: 1.3em"><b>오늘의 날씨는 어때요?</b></label>
            <ul class="color-selector">
                <li id="li01">
                    <label class="color02">
                        <input type="radio" id="radio01" name="weatherToday" value="몹시 추웠다"/>
                        <span class="icon"></span>
                    </label>
                    <label style="font-size: 1.3em">많이추움</label>

                </li>

                <li id="li02">
                    <label class="color02">
                        <input type="radio" id="radio02" name="weatherToday" value="추웠다"/>
                        <span class="icon"></span>
                    </label>
                    <label style="font-size: 1.3em">추움</label>

                </li>
                <li id="li03">
                    <label class="color02">
                        <input type="radio" id="radio03" name="weatherToday" value="보통이다" />
                        <span class="icon"></span>
                    </label>
                    <label style="font-size: 1.3em">보통이다</label>

                </li>
                <li id="li04">
                    <label class="color02">
                        <input type="radio" id="radio04"  name="weatherToday" value=" 더웠다." />
                        <span class="icon"></span>
                    </label>
                    <label style="font-size: 1.3em">더웠다</label>

                </li>
                <li id="li05">
                    <label class="color02">
                        <input type="radio" id="radio05"  name="weatherToday" value="몹시 더웠다."/>
                        <span class="icon"></span>
                    </label>
                    <label style="font-size: 1.3em">몹시 더웠다</label>

                </li>
            </ul>
            <label class="statement" style="font-size: 1.3em"><b>무엇 때문에 숨쉬기가 불편했나요?</b></label>
            <ul class="color-selector">
                <li id="li06">
                    <label class="color02">
                        <input type="radio" id="radio06"  name="breath" value="가래나옴" />
                        <span class="icon"></span>
                    </label>
                    <label style="font-size: 1.3em">가래나옴</label>

                </li>

                <li id="li07">
                    <label class="color02">
                        <input type="radio" id="radio07"  name="breath" value=" 기타" />
                        <span class="icon"></span>
                    </label>
                    <label style="font-size: 1.3em">기타</label>

                </li>
                <li id="li08">
                    <label class="color02">
                        <input type="radio" id="radio08"  name="breath" value="침" />
                        <span class="icon"></span>
                    </label>
                    <label style="font-size: 1.3em">침&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                </li>
            </ul>
            <label class="statement" style="font-size: 1.3em"><b>오늘의 몸 상태는 어떤가요?</b></label>

            <ul class="color-selector">
                <li id="li09">
                    <label class="color02">
                        <input type="radio" id="radio09"  name="feelToday" value="매우 아팠다." />
                        <span class="icon"></span>
                    </label>
                    <label style="font-size: 1.3em">매우아픔</label>

                </li>

                <li id="li10">
                    <label class="color02">
                        <input type="radio" id="radio10"  name="feelToday" value=" 아팠다." />
                        <span class="icon"></span>
                    </label>
                    <label style="font-size: 1.3em">아픔</label>

                </li>
                <li id="li11">
                    <label class="color02">
                        <input type="radio" id="radio11"  name="feelToday" value="보통이다." />
                        <span class="icon"></span>
                    </label>
                    <label style="font-size: 1.3em">보통이다</label>

                </li>
                <li id="li12">
                    <label class="color02">
                        <input type="radio" id="radio12"  name="feelToday" value="아프지 않았다." />
                        <span class="icon"></span>
                    </label>
                    <label style="font-size: 1.3em">안아픔</label>

                </li>
                <li id="li13">
                    <label class="color02">
                        <input type="radio" id="radio13"  name="feelToday" value="정상이다." />
                        <span class="icon"></span>
                    </label>
                    <label style="font-size: 1.3em">정상임</label>

                </li>
            </ul>


            <label class="statement" style="font-size: 1.3em"><b>오늘 가장 불편했던 점은 무엇인가요?</b></label>
            <ul class="color-selector">
                <li id="li14">
                    <label class="color02">
                        <input type="radio" id="radio14"  name="unComfortable" value="가래나옴" />
                        <span class="icon"></span>
                    </label>
                    <label style="font-size: 1.3em">가래나옴</label>
                </li>

                <li id="li15">
                    <label class="color02">
                        <input type="radio" id="radio15"  name="unComfortable" value="침" />
                        <span class="icon"></span>
                    </label>
                    <label style="font-size: 1.3em">침</label>
                </li>

                <li id="li16">
                    <label class="color02">
                        <input type="radio" id="radio16"  name="unComfortable" value="간지러움" />
                        <span class="icon"></span>
                    </label>
                    <label style="font-size: 1.3em">간지러움</label>
                </li>

                <li id="li17">
                    <label class="color02">
                        <input type="radio" id="radio17"  name="unComfortable" value="대변" />
                        <span class="icon"></span>
                    </label>
                    <label style="font-size: 1.3em">대변</label>
                </li>

                <li id="li18">
                    <label class="color02">
                        <input type="radio" id="radio18"  name="unComfortable" value="소변" />
                        <span class="icon"></span>
                    </label>
                    <label style="font-size: 1.3em">소변</label>
                </li>

            </ul>
            <div class="" id="ring" style="float: right; padding-left: 5%"><img src="/assets/img/ringbell.png"></div>

        </section><!-- End Services Section -->
        <button type="submit" id="write" class="btn-hover color-1"
                style="width: 200px; height: 100px; float: right; font-size: 40px ;">
            작성하기
        </button>

    </main>
</form>
</body>
<footer>


</footer>
</html>