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

<title>予約内容確認</title>

<!-- Bootstrap core CSS -->
<link href="/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/css/signin_header.css" rel="stylesheet">

</head>

<body>

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
					<li class="nav-item"><a class="nav-link" href="Tanae-TOP">トップ</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="login">ログイン</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="userMypage_saito">マイページ</a></li>
				</ul>
			</div>
		</nav>
	</header>

	<script src="/js/jquery-slim.min.js"></script>
	<script>
		window.jQuery
				|| document.write(
						'<script src="js/jquery-slim.min.js"><\/script>')
	</script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<br>
	<br>
	<br>
	<div class="container">
		<form action="userReservationDeleteResult_saito" class="form-signin">

			<img class="mb-4"
				src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg"
				alt="" width="72" height="72">

			<h1 class="h3 mb-3 font-weight-normal">予約削除確認</h1>
			<br>

			<p>
				以下の予約を<br>キャンセルしてよろしいですか？
			</p>

			<div class="row">
				<div class="col">
					<label class="mr-sm-2" for="inlineFormCustomSelect">店舗名</label> <input
						class="form-control" type="text" placeholder="割烹 東京">
				</div>
			</div>
			<br>

			<div class="row">
				<div class="col">
					<label class="mr-sm-2" for="inlineFormCustomSelect">ご予約者氏名</label>
					<input class="form-control" type="text" placeholder="山田 太郎 様">
				</div>
			</div>
			<br>

			<div class="row">
				<div class="col">
					<label class="mr-sm-2" for="inlineFormCustomSelect">電話番号</label> <input
						class="form-control" type="text" placeholder="00012345678">
				</div>
			</div>
			<br>

			<div class="row">
				<div class="col">
					<label class="mr-sm-2" for="inlineFormCustomSelect">来店予定時刻</label>
					<input class="form-control" type="text" placeholder="20:00">
				</div>
			</div>
			<br>

			<div class="row">
				<div class="col">
					<label class="mr-sm-2" for="inlineFormCustomSelect">来店予定人数</label>
					<input class="form-control" type="text" placeholder="2名">
				</div>
			</div>
			<br>

			<div class="row">
				<div class="col">
					<label class="mr-sm-2" for="inlineFormCustomSelect">席種別</label>
					<input class="form-control" type="text" placeholder="2人掛けテーブル">
				</div>
			</div>
			<br><br>

			<p style="color: #ff0000">一度取り消した予約は元に戻せません。</p>
			<div class="row">
				<div class="col">
					<button class="btn btn-lg btn-warning btn-block" type="submit">予約をキャンセルする</button>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col">
					<button class="btn btn-outline-secondary btn-sm" type="button"
						onclick="location.href='userMypage_saito'">マイページに戻る</button>
				</div>
			</div>
		</form>
	</div>

	<footer class="container">
		<p class="float-right"></p>
		<p>&copy; 2018 VandR System &middot;</p>
	</footer>
</body>
</html>
