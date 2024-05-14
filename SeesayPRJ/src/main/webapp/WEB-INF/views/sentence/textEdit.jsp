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
</head>
<body>
<i class="bi bi-list mobile-nav-toggle"></i>
<div id="home" style="height: 80px; padding-bottom: 100px; text-align: center;"><img src="/assets/img/main.jpg"></div>
<main id="main">
    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
		<form action="/sentence/textEditProc" method="post">
        <div class="container" data-aos="fade-up" style="float: left; margin-left: 12%">

            <div class="row gy-3">

                <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="600">
                    <div id="box01" class="service-box blue">
                        <i class="discuss-line icon"><img src="/assets/img/sound.png"></i>
                        <h3><input type="text" style="border: none; text-align: center" id="textSentence1"
                                   name="sentenceContent" value="<%=rList.get(0).getSentenceContent()%>"></h3>
                        <p><br><br></p>
						<input type="hidden" name="sentenceSeq" value="<%=rList.get(0).getSentenceSeq()%>">

					</div>
                </div>

                <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="500">
                    <div id="box02" class="service-box blue">
                        <i class="discuss-line icon"><img src="/assets/img/sound.png"></i>
                        <h3><input type="text" style="border: none; text-align: center" id="textSentence2"
                                   name="sentenceContent" value="<%=rList.get(1).getSentenceContent()%>"></h3>

                        <p><br><br></p>
						<input type="hidden" name="sentenceSeq" value="<%=rList.get(1).getSentenceSeq()%>">

					</div>
                </div>

                <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="600">
                    <div id="box03" class="service-box blue">
                        <i class="discuss-line icon"><img src="/assets/img/sound.png"></i>
                        <h3><input type="text" style="border: none; text-align: center" id="textSentence3"
                                   name="sentenceContent" value="<%=rList.get(2).getSentenceContent()%>"></h3>

                        <p><br><br></p>
						<input type="hidden" name="sentenceSeq" value="<%=rList.get(2).getSentenceSeq()%>">

					</div>
                </div>
                <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="700">
                    <div id="box04" class="service-box blue">
                        <i class="discuss-line icon"><img src="/assets/img/sound.png"></i>
                        <h3><input type="text" style="border: none; text-align: center" id="textSentence4"
                                   name="sentenceContent" value="<%=rList.get(3).getSentenceContent()%>"></h3>

                        <p><br><br></p>
						<input type="hidden" name="sentenceSeq" value="<%=rList.get(3).getSentenceSeq()%>">

					</div>
                </div>
                <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="800">
                    <div id="box05" class="service-box blue">
                        <i class="discuss-line icon"><img src="/assets/img/sound.png"></i>
                        <h3><input type="text" style="border: none; text-align: center" id="textSentence5"
                                   name="sentenceContent" value="<%=rList.get(4).getSentenceContent()%>"></h3>
                        <p><br><br></p>
						<input type="hidden" name="sentenceSeq" value="<%=rList.get(4).getSentenceSeq()%>">

					</div>
                </div>
                <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="900">
                    <div id="box06" class="service-box blue">
                        <i class="discuss-line icon"><img src="/assets/img/sound.png"></i>
                        <h3><input type="text" style="border: none; text-align: center" id="textSentence6"
                                   name="sentenceContent" value="<%=rList.get(5).getSentenceContent()%>"></h3>
                        <p><br><br></p>
						<input type="hidden" name="sentenceSeq" value="<%=rList.get(5).getSentenceSeq()%>">
                    </div>
                </div>
            </div>
        </div>
        <div class="circle" id="ring" style="float: right; padding-top: 30%; margin-right: 5%"><img
                src="/assets/img/ringbell.png"></div>
			<div class="input-group mb-0">
				<input class="btn btn-primary btn-lg btn-block" type="submit" style="margin-left: 42%; width: 300px; height: 50px;"
					   value="수정하기">

				<%--									<a class="btn btn-primary btn-lg btn-block" href="/index">로그인</a>--%>
			</div>
		</form>
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