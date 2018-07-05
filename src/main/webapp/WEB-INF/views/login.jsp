<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="/css/favicon.ico">

<title>ログイン</title>

<!-- Bootstrap core CSS -->
<link href="/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/css/signin_navbar.css" rel="stylesheet">

</head>

<body class="text-center">

	<header>
		<nav class="navbar navbar-dark bg-warning">
			<a class="navbar-brand" href="#">V and R System</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarsExample01" aria-controls="navbarsExample01"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarsExample01">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="Tanae-TOP">トップ</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="userMypage_saito">マイページ</a></li>
					<li class="nav-item"><a class="nav-link"
						href="userReservationSelect_saito">予約確認</a></li>
				</ul>
			</div>
		</nav>
	</header>

	<div class="container">
		<form action="userReservationConfirm_saito" class="form-signin">

			<img class="mb-4"
				src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg"
				alt="" width="72" height="72">

			<h1 class="h3 mb-3 font-weight-normal">会員ログイン</h1>


			<div class="row">
				<div class="col">
					<input class="form-control" type="text" placeholder="会員ID">
				</div>
			</div>
			<br>

			<div class="row">
				<div class="col">
					<input class="form-control" type="text" placeholder="パスワード">
				</div>
			</div>
			<br>

			<div class="row">
				<div class="col">
					<button class="btn btn-lg btn-warning btn-block" type="submit">ログイン</button>
				</div>

			</div>
			<br>
			<div class="row">
				<div class="col">
					<button class="btn btn-outline-secondary btn-sm" type="button"
						onclick="location.href='Tanae-ShopProfile'">店舗詳細に戻る</button>
				</div>
			</div>
		</form>
	</div>

</body>
</html>





