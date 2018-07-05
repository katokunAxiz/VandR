<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="ja">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../../../favicon.ico">

<title>トップ</title>

<link rel="stylesheet" href="/css/bootstrap.min.css">
<link href="/css/navbar.css" rel="stylesheet">
<link href="/css/product.css" rel="stylesheet">

</head>

<body>

	<!-- header -->
	<nav class="navbar navbar-dark bg-warning fixed-top">
		<a class="navbar-brand" href="#">V and R System</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExample01" aria-controls="navbarsExample01"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExample01">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="Tanae-TOP">トップ</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="login">ログイン</a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="userMypage_saito">マイページ</a>
          </li>
        </ul>
      </div>
	</nav>

	<script src="js/jquery-slim.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-slim.min.js"><\/script>')</script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="py-5 text-center">
			<h2>V and R System</h2>
			<p class="lead">こんにちは</p>
		</div>

	</div>
	<div class="col-md-8 order-md-1">
		<h4 class="mb-3">店舗詳細検索</h4>
		<form class="needs-validation" novalidate>


			<div class="col-md-6 mb-3">
				<label for="state">来店人数</label> <select
					class="custom-select d-block w-100" id="state" required>
					<option value="">人数を選択してください</option>
					<option>1名</option>
					<option>2名</option>
					<option>3名</option>
					<option>4名</option>
					<!-- <option>貸切</option> -->
				</select>
				<div class="invalid-feedback">Please provide a valid state.</div>
			</div>

			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="country">エリア</label> <select
						class="custom-select d-block w-100" id="country" required>
						<option value="">エリアを選択してください</option>
						<option>八重洲</option>
						<option>銀座</option>
						<option>神田</option>
						<option>六本木</option>
					</select>
					<div class="invalid-feedback">Please select a valid country.
					</div>
				</div>
			</div>
			<br>

			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="country">料理ジャンル</label> <select
						class="custom-select d-block w-100" id="country" required>
						<option value="">ジャンルを選択してください</option>
						<option>和食</option>
						<option>洋食</option>
						<option>中華</option>
						<option>その他</option>
					</select>
					<div class="invalid-feedback">Please select a valid country.
					</div>
				</div>
			</div>

			<br>

			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="country">予算</label> <select
						class="custom-select d-block w-100" id="country" required>
						<option value="">予算を選択してください</option>
						<option>～\1,999</option>
						<option>～\2,999</option>
						<option>～\3,999</option>
						<option>～\4,999</option>
					</select>
					<div class="invalid-feedback">Please select a valid country.
					</div>
				</div>
			</div>



			<hr class="mb-4">
			<button class="btn btn-lg btn-warning btn-block" type="button"
				onclick="location.href='Tanae-Shop'">検索</button>
		</form>
	</div>


	<footer class="container">
		<p class="float-center"></p>
		<p>&copy; 2018 VandR System &middot;</p>
	</footer>


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
	<script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/assets/js/vendor/holder.min.js"></script>
	<script>
      // Example starter JavaScript for disabling form submissions if there are invalid fields
      (function() {
        'use strict';

        window.addEventListener('load', function() {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');

          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
              if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();
    </script>
</body>
</html>
