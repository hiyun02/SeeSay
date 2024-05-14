<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-US" dir="ltr">

<head>
	<!-- Basic Page Info -->
	<meta charset="utf-8">
	<title>SeeSay Login</title>

	<!-- Site favicon -->
	<link rel="apple-touch-icon" sizes="180x180" href="/assets/vendors/images/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="/assets/vendors/images/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/assets/vendors/images/favicon-16x16.png">

	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="/assets/vendors/styles/core.css">
	<link rel="stylesheet" type="text/css" href="/assets/vendors/styles/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="/assets/vendors/styles/style.css">
	<link href="/assets/css/theme.css" rel="stylesheet" />

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-119386393-1');
	</script>
</head>
<body class="login-page">
<div class="bg-holder" style="background-image:url(/assets/img/illustrations/service.png);background-position:bottom center;background-size:contain;">
</div>

<div class="login-wrap">
	<div class="container" style="text-align: center;">

		<div class="d-flex flex-column align-items-center justify-content-center" style="padding-top: 5%">
			<div class="card card-bg p-4" style="box-shadow: 1px 1px 3px 3px">
				<div class="login-title">
					<h2 class="text-center text-primary" style="padding-bottom: 10%">Login To SeeSay</h2>
				</div>
				<form action="/user/loginProc" method="post">
					<div class="select-role">
						<div class="btn-group btn-group-toggle" data-toggle="buttons">
							<label class="btn active">
								<input type="radio" name="userAuth" value="patient" id="patient">
								<div><img src="/assets/img/patient.png" ></div>
								<span>저는</span>
								환자입니다.
							</label>
							<label class="btn">
								<input type="radio" name="userAuth" value="guardian" id="guardian">
								<div><img src="/assets/img/guard.png"></div>
								<span>저는</span>
								보호자입니다.
							</label>
						</div>
					</div>
					<div class="input-group custom">
						<label for="userId" class="form-label">아이디</label>
						<input class="form-control rounded-pill border-white input-box" id="userId" name="userId" type="text" placeholder="아이디를 입력해주세요" />
						<div class="invalid-feedback">아이디를 입력해주세요</div>
					</div>
					<div class="input-group custom">
						<label for="password" class="form-label">비밀번호</label>
						<input class="form-control rounded-pill border-white input-box" id="password" name="password" type="password" placeholder="비밀번호를 입력해주세요" />
						<div class="invalid-feedback">비밀번호를 입력해주세요</div>
					</div>
					<div class="row pb-30">
						<div class="col-4">
							<div class=""><a href="/user/findId">아이디 찾기</a></div>
						</div>
						<div class="col-4">
							<div class=""><a href="forgot-password.html"></a></div>
						</div>
						<div class="col-4">
							<div class="forgot-password"><a href="/user/findPwd">비밀번호 찾기</a></div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="input-group mb-0">
								<input class="btn btn-primary btn-lg btn-block" type="submit" value="로그인">
								<%--									<a class="btn btn-primary btn-lg btn-block" href="/index">로그인</a>--%>
							</div>
							<div class="font-16 weight-600 pt-10 pb-10 text-center" data-color="#707373"></div>
							<div class="input-group mb-0">
								<a class="btn btn-primary btn-lg btn-block" href="/user/faceLogin">Face ID</a>
							</div>
							<div class="font-16 weight-600 pt-10 pb-10 text-center" data-color="#707373">OR</div>
							<div class="input-group mb-0">
								<a class="btn btn-danger btn-lg btn-block" href="/user/register">회원가입</a>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- js -->
<script src="/assets/vendors/scripts/core.js"></script>
<script src="/assets/vendors/scripts/script.min.js"></script>
<script src="/assets/vendors/scripts/process.js"></script>
<script src="/assets/vendors/scripts/layout-settings.js"></script>

<!-- ===============================================-->
<!--    JavaScripts-->
<!-- ===============================================-->
<script src="/assets/vendors/@popperjs/popper.min.js"></script>
<script src="/assets/vendors/bootstrap/bootstrap.min.js"></script>
<script src="/assets/vendors/is/is.min.js"></script>
<script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
<script src="/assets/vendors/feather-icons/feather.min.js"></script>

<script src="/assets/js/theme.js"></script>
<!-- Vendor JS Files -->
<script src="/assets/vendors/apexcharts/apexcharts.min.js"></script>
<script src="/assets/vendors/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/assets/vendors/chart.js/chart.min.js"></script>
<script src="/assets/vendors/echarts/echarts.min.js"></script>
<script src="/assets/vendors/quill/quill.min.js"></script>
<script src="/assets/vendors/simple-datatables/simple-datatables.js"></script>
<script src="/assets/vendors/tinymce/tinymce.min.js"></script>
<script src="/assets/vendors/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="/assets/js/main.js"></script>

</body>

</html>