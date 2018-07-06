<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="ja">

<head>
<meta charset="UTF-8">
<title>来店履歴一覧</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../../../favicon.ico">

<link rel="stylesheet" href="/css/bootstrap.min.css">
<link href="navbar.css" rel="stylesheet">
<link href="album.css" rel="stylesheet">

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

	<script src="js/jquery-slim.min.js"></script>
	<script src="js/jquery.min.js"></script>
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

	<h1>${fn:escapeXml(user.adminName)}山田さんの来店履歴</h1>

	<!-- 来店履歴をリストで表示 -->

	<main role="main">

	<div class="album py-5 bg-whight">
		<div class="container">

			<div class="row">
				<div class="col-md-4">
					<div class="card mb-4 box-shadow">
						<img class="card-img-top" src="/img/yaesu1.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h4 class="card-title">割烹 東京</h4>
							<p class="card-text">八重洲エリア</p>
							<p class="card-text">予算 ～\\2,999</p>
							<p class="card-text">TEL 00-0000-0000</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-warning"
										onclick="location.href='Tanae-ShopProfile'">詳細を見る</button>

									<!-- 切り替えボタンの設定 -->
									<button type="button" class="btn btn-sm btn-outline-secondary"
										data-toggle="modal" data-target="#exampleModalCenter">削除する</button>

									<!-- モーダルの設定 -->
									<div class="modal fade" id="exampleModalCenter" tabindex="-1"
										role="dialog" aria-labelledby="exampleModalCenterTitle"
										aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered"
											role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalCenterTitle">選択した来店履歴を削除しますか？</h5>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="閉じる">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">
													<p>消去した履歴は元に戻せません。</p>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"
														data-dismiss="modal">閉じる</button>
													<button type="button" class="btn btn-danger"
														onclick="location.href='userComingHistory_saito'">削除する</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- <small class="text-muted">9 mins</small> -->
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="card mb-4 box-shadow">
						<img class="card-img-top" src="/img/yaesu2.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h4 class="card-title">中華 ○△楼</h4>
							<p class="card-text">神田エリア</p>
							<p class="card-text">予算 ～\\4,999</p>
							<p class="card-text">TEL 00-0000-0000</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-warning">詳細を見る</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">削除する</button>
								</div>
								<!-- <small class="text-muted">9 mins</small> -->
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="card mb-4 box-shadow">
						<img class="card-img-top" src="/img/yaesu3.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h4 class="card-title">私のイタリアン</h4>
							<p class="card-text">銀座エリア</p>
							<p class="card-text">予算 ～\\2,999</p>
							<p class="card-text">TEL 00-0000-0000</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-warning">詳細を見る</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">削除する</button>
								</div>
								<!-- <small class="text-muted">9 mins</small> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</main>
	<form:form action="userMypage_saito" method="get">
		<input type="submit" class="btn btn-outline-secondary"
			value="マイページに戻る">
	</form:form>
<br>
	<%-- <form:form action="userComingHistory_saito" method="get">
		<input type="submit" class="btn btn-outline-secondary" value="来店履歴に戻る">
	</form:form> --%>

	<div>
		<a href="Tanae-TOP">トップ</a>
	</div>

	<footer class="container">
		<p class="float-right"></p>
		<p>&copy; 2018 VandR System &middot;</p>
	</footer>

</body>
</html>
