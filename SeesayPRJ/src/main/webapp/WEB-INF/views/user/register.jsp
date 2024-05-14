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
	<script src="/assets/js/jquery-3.6.0.min.js"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-119386393-1');

		function password_Check() {

			var password1 = document.getElementById('inputPassword1').value;
			var password2 = document.getElementById('inputPassword2').value;
			console.log(password1);
			console.log(password2);
			if(password1 === password2) {
				document.getElementById('check').innerHTML = '비밀번호가 일치합니다.'
				document.getElementById('check').style.color = 'Green';
			}else {
				document.getElementById('check').innerHTML = '비밀번호가 일치하지 않습니다.'
				document.getElementById('check').style.color = 'Red';
				return false;
			}
		}


		function userIdcheck(){
			let sendId = document.getElementById('inputID').value;

			$.ajax({
				url:'/user/userIdCheck',
				type:'post',
				data:{"userId":sendId},
				success:function (data){
					if (data == 0) {
						document.getElementById('userIdCheck').innerHTML = '중복된 아이디가 없습니다.'
						document.getElementById('userIdCheck').style.color = 'Green';
					}else{
						document.getElementById('userIdCheck').innerHTML = '중복된 아이디 입니다. 다른 아이디를 입력해 주세요.'
						document.getElementById('userIdCheck').style.color = 'Red';
						return false;
					}

				}
			});
		}

		function userEmailCheck(){
			let sendEmail = document.getElementById('inputEmail').value;

			$.ajax({
				url:'/user/userEmailCheck',
				type:'post',
				data:{"userEmail":sendEmail},
				success:function (data){
					if (data == 0) {
						document.getElementById('userEmailCheck').innerHTML = '중복된 이메일이 없습니다.'
						document.getElementById('userEmailCheck').style.color = 'Green';
					}else{
						document.getElementById('userEmailCheck').innerHTML = '중복된 이메일입니다. 다른 이메일을 사용해 주세요.'
						document.getElementById('userEmailCheck').style.color = 'Red';
						return false;
					}

				}
			});
		}


	</script>
</head>
<body class="login-page">
<div class="bg-holder" style="background-image:url(/assets/img/illustrations/service.png);background-position:bottom center;background-size:contain;">
</div>

<div class="login-wrap">
	<div class="container" style="text-align: center;">

		<div class="d-flex flex-column align-items-center justify-content-center" style="padding-top: %">
			<div class="card card-bg p-4" style="box-shadow: 1px 1px 3px 3px">
				<div class="login-title">
					<h2 class="text-center text-primary" style="padding-bottom: 5%">Register To SeeSay</h2>
				</div>
				<form action="/user/registerProc" method="post">

					<div class="input-group custom">
						<label for="inputID" class="form-label">아이디</label>
						<input class="form-control rounded-pill border-white input-box" id="inputID" name="userId" type="text" placeholder="아이디를 입력해주세요" onkeyup="userIdcheck();"/>
						<div class="invalid-feedback">아이디를 입력해주세요</div>
					</div>
					<p id="userIdCheck"></p>
					<div class="input-group custom">
						<label for="inputPassword1" class="form-label">비밀번호</label>
						<input class="form-control rounded-pill border-white input-box" id="inputPassword1" name="password" type="password" placeholder="비밀번호를 입력해주세요" required="required"
							   onkeyup="password_Check()"/>
						<div class="invalid-feedback">비밀번호를 입력해주세요</div>
					</div>
					<div class="input-group custom">
						<label for="inputPassword2" class="form-label">비밀번호확인</label>
						<input class="form-control rounded-pill border-white input-box" id="inputPassword2" type="password" placeholder="비밀번호를 입력해주세요" required="required"
							   onkeyup="password_Check()"/>
						<div class="invalid-feedback">비밀번호를 입력해주세요</div>
					</div>
					<p id="check"></p>
					<div class="input-group custom">
						<label for="inputName" class="form-label">이름</label>
						<input class="form-control rounded-pill border-white input-box" id="inputName" name="userName" type="text" placeholder="이름을 입력해주세요" />
						<div class="invalid-feedback">이름를 입력해주세요</div>
					</div>
					<div class="input-group custom">
						<label for="inputPhoneNumber" class="form-label">보호자 전화번호</label>
						<input class="form-control rounded-pill border-white input-box" id="inputPhoneNumber" name="phoneNumber" type="text" placeholder="전화번호를 입력해주세요" />
						<div class="invalid-feedback">전화번호를 입력해주세요</div>
					</div>
					<div class="input-group custom">
						<label for="inputEmail" class="form-label">이메일</label>
						<input class="form-control rounded-pill border-white input-box" id="inputEmail" type="email" name="email" placeholder="이메일을 입력해주세요" onkeyup="userEmailCheck();"/>
						<div class="invalid-feedback">이메일을 입력해주세요</div>
					</div>
					<p id="userEmailCheck"></p>

					<div class="row">
						<div class="col-sm-12">
							<div class="input-group mb-0">

								<input class="btn btn-primary btn-lg btn-block" type="submit" value="가입하기">

								<%--									<a class="btn btn-primary btn-lg btn-block" href="/user/login">로그인</a>--%>
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