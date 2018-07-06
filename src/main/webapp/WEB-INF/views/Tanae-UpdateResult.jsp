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

<title>更新完了</title>

<link rel="stylesheet" href="/css/bootstrap.min.css">
<link href="/css/signin_header.css" rel="stylesheet">

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

	<div class="container">
		<div class="col align-self-center">
			<h1 class="h3 mb-3 font-weight-normal">更新ができました。</h1>
		</div>
		<div class="center-block">
			<button class="btn btn-lg btn-warning btn-block" type="button"
				onclick="location.href='userMypage_saito'">マイページに戻る</button>
		</div>
		<footer class="container">
			<p class="float-right"></p>
			<p>&copy; 2018 VandR System &middot;</p>
		</footer>
	</div>
</body>
</html>