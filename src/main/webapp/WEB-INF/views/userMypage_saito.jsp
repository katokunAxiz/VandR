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

<title>マイページ</title>

<link rel="stylesheet" href="/css/bootstrap.min.css">
<link href="/css/navbar.css" rel="stylesheet">

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

	<script src="js/jquery-slim.min.js"></script>
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
	<h1>${fn:escapeXml(user.adminName)}山田さんのマイページ</h1>

	<br>
	<form:form action="userComingHistory_saito" method="post">
		<input type="submit" class="btn btn-warning" value="来店履歴一覧">
	</form:form>

	<br>
	<form:form action="Tanae-Update" method="post">
		<input type="submit" class="btn btn-warning" value="会員情報変更">
	</form:form>

	<br>
	<form:form action="userReservationLook_saito" method="post">
		<input type="submit" class="btn btn-warning" value="予約確認">
	</form:form>
	<br>

	<!-- 切り替えボタンの設定 -->
	<button type="button" class="btn btn-warining" data-toggle="modal"
		data-target="#exampleModalCenter">退会する</button>

	<!-- モーダルの設定 -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle">本当に退会してよろしいですか？</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="閉じる">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>
						退会するとこれまでの履歴は<br>すべて削除されます。
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">閉じる</button>
					<button type="button" class="btn btn-danger"
						onclick="location.href='userUnsubscribeResult_saito'">退会する</button>
				</div>
			</div>
		</div>
	</div>

<br>
	<br>

	<div class="row">
		<div class="col">
			<button class="btn btn-outline-secondary btn-sm" type="button"
				onclick="location.href='userReservation_saito'">トップに戻る</button>
		</div>
	</div>
	<br>

	<div class="row">
		<div class="col">
			<button class="btn btn-outline-secondary btn-sm" type="button"
				onclick="location.href='userLogout_saito'">ログアウト</button>
		</div>
	</div>
	<br>

	<footer class="container">
		<p class="float-right"></p>
		<p>&copy; 2018 VandR System &middot;</p>
	</footer>
</body>
</html>

