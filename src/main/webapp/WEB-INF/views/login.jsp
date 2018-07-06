<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
					<li class="nav-item"><a class="nav-link" href="login">ログイン</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="userMypage_saito">マイページ</a></li>
				</ul>
			</div>
		</nav>
	</header>

	<script src="js/jquery-slim.min.js"></script>
	<script>
		window.jQuery
				|| document.write(
						'<script src="js/jquery-slim.min.js"><\/script>')
	</script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<br>

	<div class="container">
		<form:form action="login" class="form-signin" method="post" modelAttribute="loginForm">


			<h1 class="h3 mb-3 font-weight-normal">ログイン</h1>

			<br>

			<c:if test="${not empty errmsg}">
				<p class="error">${fn:escapeXml(errmsg)}</p>
			</c:if>

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
					<button class="btn btn-lg btn-warning btn-block" type="submit">ログインする</button>
				</div>

			</div>
			<br>
			<div class="row">
				<div class="col">
					<button class="btn btn-outline-secondary btn-sm" type="button"
						onclick="location.href='Tanae-UserInsert'">会員登録がお済でない方はこちら</button>
				</div>
			</div>
		</form:form>
	</div>

</body>
</html>





