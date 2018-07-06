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

<title>店舗詳細</title>

<link rel="stylesheet" href="/css/bootstrap.min.css">
<link href="/css/navbar.css" rel="stylesheet">
<link href="/css/carousel.css" rel="stylesheet">
<link href="/css/album.css" rel="stylesheet">

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
				<li class="nav-item"><a class="nav-link" href="Tanae-TOP">トップ</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="login">ログイン</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="userMypage_saito">マイページ</a></li>
			</ul>
		</div>
	</nav>

	<script src="/js/jquery-slim.min.js"></script>
	<script>
		window.jQuery
				|| document.write(
						'<script src="js/jquery-slim.min.js"><\/script>')
	</script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/jQuery.js"></script>
	<br>
	<br>

	<div class="album py-4 bg-whight">
		<div class="container">

			<div class="row">
				<div class="col">
					<div class="card">
						<img class="card-img-top" src="/img/yaesu1.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h4 class="card-title">割烹 東京</h4>
							<p class="card-text">八重洲エリア</p>
							<p class="card-text">予算 ～\\2,999</p>
							<p class="card-text">営業時間 17:00～24:00</p>
							<p class="card-text">定休日 火曜</p>
							<p class="card-text">TEL 00-0000-0000</p>
							<p class="card-text">自慢の○○をぜひ一度ご賞味ください</p>
							<div class="d-flex justify-content-between align-items-center">
								<table class="table  mb-0 table-responsive table-bordered">
									<thead>
										<tr class="table-warning">
											<th scope="col"></th>
											<th scope="col">席種別</th>
											<th scope="col">空席数／総席数</th>
											<th scope="col">予約</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">1</th>
											<td>2名様用テーブル（禁煙）</td>
											<td>4/5テーブル</td>
											<td><button type="button"
													class="btn btn-sm btn-outline-warning"
													onclick="location.href='userReservation_saito'">予約する</button></td>
										</tr>
										<tr>
											<th scope="row">2</th>
											<td>2名様用テーブル（喫煙）</td>
											<td>5/8テーブル</td>
											<td><button type="button"
													class="btn btn-sm btn-outline-warning"
													onclick="location.href='userReservation_saito'">予約する</button></td>

										</tr>
										<tr>
											<th scope="row">3</th>
											<td>4名様用テーブル（禁煙）</td>
											<td>1/8テーブル</td>
											<td><button type="button"
													class="btn btn-sm btn-outline-warning"
													onclick="location.href='userReservation_saito'">予約する</button></td>
										</tr>
										<tr>
											<th scope="row">4</th>
											<td>4名様用テーブル（喫煙）</td>
											<td>1/5テーブル</td>
											<td><button type="button"
													class="btn btn-sm btn-outline-warning"
													onclick="location.href='userReservation_saito'">予約する</button></td>
										</tr>

									</tbody>
								</table>


							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<form:form action="Tanae-Shop" method="get">
		<input type="submit" class="btn btn-outline-secondary" value="検索結果に戻る">
	</form:form>
	<br>
	<form:form action="userComingHistory_saito" method="get">
		<input type="submit" class="btn btn-outline-secondary" value="来店履歴に戻る">
	</form:form>

	<br>
	<div>
		<a href="Tanae-TOP">トップ</a>
	</div>

	<!-- FOOTER -->
	<footer class="container">
		<p class="float-right"></p>
		<p>&copy; 2018 VandR System &middot;</p>
	</footer>


</body>
</html>
