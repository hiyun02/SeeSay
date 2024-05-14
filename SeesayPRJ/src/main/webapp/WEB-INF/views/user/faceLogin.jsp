<%@ page import="kopo.poly.dto.UserDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    UserDTO userDTO = (UserDTO) request.getAttribute("userDTO");
%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>FaceID Login</title>

    <script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
    <link href="/assets/css/theme.css" rel="stylesheet"/>
    <script src="/assets/js/jquery-3.6.0.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


    <style>
        button {
            width: 400px;
            height: 100px;
            margin-top: 180px;
            margin-left: 30px;
        }
    </style>


</head>
<body>

<section style="margin-top: 10%; margin-left: 5%">
    <div class="bg-holder"
         style="background-image:url(/assets/img/illustrations/service-bg.png);background-position:bottom center;background-size:contain;">
        <div style="float: left; margin-left: 10%;">
            <video id="video" width=500 height=500 autoplay muted></video>
            <canvas id="canvas" width="640" height="480"
                    style=" display:none; width : 500px; height : 500px;"></canvas>
            <div id="progress" class="progress mt-4">
                <div class="progress-bar bg-success" role="progressbar"
                     style="width: calc(100/ 12 * 0%)"></div>
            </div>
        </div>

        <div style="float: right; margin-right: 30%">
            <div style="width: 430px; height: 150px; margin-bottom: 50px; margin-left: 80px">
                <p style="font-size: 25px; color: royalblue; margin-bottom: 0px; letter-spacing: 1px;"> 눈썹이 보이게 카메라를
                    바라보세요.</p><br/>
                <p style="font-size: 25px; color: royalblue; margin-bottom: 0px; letter-spacing: 1px;"> 로그인 하기 버튼을
                    눌러주세요.</p><br/>
                <p style="font-size: 25px; color: royalblue; margin-bottom: 0px; letter-spacing: 1px; margin-bottom: 15px;"> 5초를 기다려주세요.</p>
                <div class="input-group custom">
                    <p style="font-size: 25px; color: royalblue; margin-bottom: 0px; letter-spacing: 1px; margin-right: 10px;"> 아이디</p>
                    <input class="form-control rounded-pill border-white input-box" id="userId" name="userId" type="text" placeholder="아이디를 입력해주세요" />
                    <div class="invalid-feedback">아이디를 입력해주세요</div>
                </div>
            </div>

            <div class="input-group mb-3" style="margin-left: 80px;">
                <button type="button" id="webcamBtn" class="btn btn-primary btn-lg btn-block">로그인</button>
            </div>

        </div>
    </div>
</section>


<!-- ===============================================-->
<!--    JavaScripts-->
<!-- ===============================================-->
<script src="vendors/@popperjs/popper.min.js"></script>
<script src="vendors/bootstrap/bootstrap.min.js"></script>
<script src="vendors/is/is.min.js"></script>
<script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
<script src="vendors/feather-icons/feather.min.js"></script>

<script src="/assets/js/theme.js"></script>

<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800;900&amp;display=swap"
      rel="stylesheet">
</body>
<script>
    window.addEventListener("load", function() {
        console.log('load start');
        var video = document.getElementById('video');
        var facebtn = document.getElementById('webcamBtn');
        var progress = document.getElementById("progress");
        var progressbar = progress.querySelector(".progress-bar");
        var imglist = [];
        var target = null;
        var myImg = null;
        var userid = document.getElementById("userId");
        if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
            navigator.mediaDevices.getUserMedia({
                video : true
            }).then(function(stream) {
                var video = document.getElementById('video');
                video.srcObject = stream;
                video.play();
            });
        };
        var canvas = document.getElementById('canvas');
        var context = canvas.getContext('2d');
        var video = document.getElementById('video');

        function sleep(ms) {
            const wakeUpTime = Date.now() + ms;
            while (Date.now() < wakeUpTime) {}
        }
        function loca(loc){
            location.href = loc;
        }
        facebtn.onclick = function() {
            console.log(userid.value);
            imglist.push(userid.value);
            for (var i = 0; i < 20; i++) {
                // canvas에 이미지그리기
                sleep(50);
                context.drawImage(video, 0, 0, 640, 480);
                console.log("facebtn 함수 진입!");

                target = $("#video");
                // if 자리
                myImg = canvas.toDataURL("image/jpeg");
                myImg = myImg.replace("data:image/jpeg;base64,", "");
                imglist.push(myImg);

            }
            $(".progress-bar").attr('style','width : calc(100/12*'+100+'%)');
            progressbar.innerHTML = 100+"%";



            var param ={
                "imglist" : imglist
            };

            console.table(param);
            $('#video').get(0).pause();
            imglist = [];
            $.ajax({
                type : "POST",
                data: JSON.stringify(param),
                dataType : "json",
                contentType : "application/json; charset=utf-8",
                url : "/user/faceanalysis",
                success : function(data) {
                    if (data == 1) {
                        swal("인증이 완료 되었습니다.!")
                            .then((value) => {
                                location.href = "/face/faceloginProc?user_id="+userid.value;
                            });

                    } else {
                        swal("인증이 실패 하였습니다.!")
                            .then((value) => {
                                location.href = "/user/login";
                            });
                    }
                },
                error : function(a, b, c) {
                    swal("에러 발생!");
                }
            });
        };
    });
    //-------------------------이미지 캡쳐 종료!-------------------//

</script>

</html>