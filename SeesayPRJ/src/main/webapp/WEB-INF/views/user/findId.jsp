<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-US" dir="ltr">

<head>
	<!-- Basic Page Info -->
	<meta charset="utf-8">
	<title>SeeSay</title>

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
					<h2 class="text-center text-primary" style="padding-bottom: 10%">아이디 찾기</h2>
				</div>
				<form>

					<div class="input-group custom">
						<label for="inputName" class="form-label">이름</label>
						<input class="form-control rounded-pill border-white input-box" name="userName" id="inputName" type="text" placeholder="이름을 입력해주세요" />
						<div class="invalid-feedback">이름을 입력해주세요</div>
					</div>
					<div class="input-group custom">
						<label for="inputEmail" class="form-label">이메일</label>
						<input class="form-control rounded-pill border-white input-box" name="email" id="inputEmail" type="email" placeholder="이메일을 입력해주세요" />
						<div class="invalid-feedback">이메일을 입력해주세요</div>
					</div>
					<div class="input-group custom">
						<label for="inputEmail" class="form-label">인증번호</label>
						<input class="form-control rounded-pill border-white" id="inputnumber" type="text" placeholder="인증번호를 입력해주세요"/>

						<div class="invalid-feedback">인증번호를 입력해주세요</div>

					</div>
					<button class="btn btn-outline-danger btn-lg btn-block">인증확인</button>

					<div class="row pb-30">

					</div>
					<div class="row">
						<div class="col-sm-12">

							<div class="input-group mb-0">
								<a class="btn btn-danger btn-lg btn-block" href="">이메일 전송</a>
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