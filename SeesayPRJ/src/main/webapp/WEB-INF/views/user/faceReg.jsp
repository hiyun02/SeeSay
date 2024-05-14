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
         style="background-image:url(/static/assets/img/illustrations/service-bg.png);background-position:bottom center;background-size:contain;">
        <div style="float: left; margin-left: 10%;">
            <video id="video" width=500 height=500 autoplay></video>
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
                <p style="font-size: 25px; color: royalblue; margin-bottom: 0px; letter-spacing: 1px;"> 등록 하기 버튼을
                    눌러주세요.</p><br/>
                <p style="font-size: 25px; color: royalblue; margin-bottom: 0px; letter-spacing: 1px;"> 5초를 기다려주세요.</p>
            </div>
            <div class="input-group mb-3" style="margin-left: 80px;">
                <button type="button" id="webcamBtn" class="btn btn-primary btn-lg btn-block">등록 하기</button>
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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

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
        var userid = "<%=userDTO.getUserId()%>"
        console.log(userid)
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

        facebtn.onclick = function() {
            imglist.push(userid);
            for (var i = 0; i < 50; i++) {


                $(".progress-bar").attr('style','width : calc(100/12*'+i+'%)');
                progressbar.innerHTML = i+1+"%";
                // canvas에 이미지그리기
                sleep(50);
                context.drawImage(video, 0, 0, 640, 480);
                console.log("facebtn 함수 진입!");
                // screenShot($("#video"));
                target = $("#video");
                // if 자리
                myImg = canvas.toDataURL("image/jpeg");
                myImg = myImg.replace("data:image/jpeg;base64,", "");
                imglist.push(myImg);
            }
            var param = {
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
                url : "/user/faceUploadProc",
                success : function(data) {
                    if (data == 1) {

                        swal("등록이 성공 하였습니다.!")
                            .then((value) => {
                                location.href = "/user/login";
                            });

                    } else {
                        swal("등록이 실패 하였습니다.!")
                            .then((value) => {
                                location.href = "/user/faceReg";
                            });

                    }
                },
                error : function(a, b, c) {
                    swal("에러 발생!")
                        .then((value) => {
                            location.href = "/user/faceReg";
                        });
                }
            });
        };
    });

    //-------------------------이미지 캡쳐 종료!-------------------//

</script>

</html>