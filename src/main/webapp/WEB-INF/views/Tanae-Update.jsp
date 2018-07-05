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

<title>会員情報更新画面</title>

<!-- Bootstrap core CSS -->
<link href="/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">
<link href="sign.css" rel="stylesheet">
<link href="navbar.css" rel="stylesheet">
<link href="signin_header.css" rel="stylesheet">
</head>

<body class="text-center">

	<header>
		<nav class="navbar navbar-dark bg-warning fixed-top">
			<a class="navbar-brand" href="#">V and R System</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarsExample01" aria-controls="navbarsExample01"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarsExample01">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="tanae-TOP">トップ</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="userMypage_saito">マイページ</a></li>
					<li class="nav-item"><a class="nav-link"
						href="userReservationLook_saito">予約確認</a></li>
				</ul>
			</div>
		</nav>
	</header>

	<script src="/js/jquery-slim.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-slim.min.js"><\/script>')</script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>

<br>
<br>
<br>

<div class="container">
	<form class="form-signin">

		<p>更新する情報を入れてください。<br>
		会員IDは変更できません。</p>

		<div class="row">
		<div class="col">
		<input class="form-control" type="text" placeholder="姓">
		</div>
		<div class="col">
		<input class="form-control" type="text" placeholder="名">
		</div>
		</div>
		<br>

		<div class="row">
		<div class="col">
		<input class="form-control" type="text" placeholder="電話番号（ハイフンなし）">
		</div>
		</div>
		<br>

		<div class="row">
		<div class="col">
		<input class="form-control" type="password" placeholder="パスワード">
		</div>
		</div>

		<div class="row">
		<div class="col">
		<input class="form-control" type="password" placeholder="パスワード（確認のため再入力）">
		</div>
		</div>
		<br>


		<!-- 切り替えボタンの設定 -->
		<button type="button" class="btn btn-lg btn-warning btn-primary btn-block"
			data-toggle="modal" data-target="#exampleModalCenter">更新する</button>

		<!-- モーダルの設定 -->
		<div class="modal fade" id="exampleModalCenter" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalCenterTitle">会員情報の更新</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="閉じる">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<p>入力した内容で更新してよろしいですか？</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">閉じる</button>
						<button type="button" class="btn btn-warning"
							onclick="location.href='Tanae-UpdateResult'">更新する</button>
					</div>
				</div>
			</div>
		</div>

		<br>
		<button class="btn  btn-outline-secondary" type="submit"
			onclick="location.href='Tanae-TOP'">TOP</button>
		<br>

	</form>
	</div>
	<footer class="container">
		<p class="float-right"></p>
		<p>&copy; 2018 VandR System &middot;</p>
	</footer>
</body>
</html>
