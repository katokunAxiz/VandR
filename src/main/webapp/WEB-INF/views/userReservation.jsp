<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!doctype html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>予約</title>

<!-- Bootstrap core CSS -->
<link href="/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/css/signin_header.css" rel="stylesheet">

</head>

<body>

<header>
 <nav class="navbar navbar-dark bg-warning fixed-top">
      <a class="navbar-brand" href="#">V and R System</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample01" aria-controls="navbarsExample01" aria-expanded="false" aria-label="Toggle navigation">
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
</header>

<script src="/js/jquery-slim.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-slim.min.js"><\/script>')</script>
    <script src="/js/popper.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
<br>
<br>
<div class="container">
	<form:form action="userReservationConfirm" class="form-signin" method="post" modelAttribute="insertReserve">

		<img class="mb-4"
			src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg"
			alt="" width="72" height="72">

		<h1 class="h3 mb-3 font-weight-normal">予約情報の入力</h1>

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
			<label class="mr-sm-2" for="inlineFormCustomSelect">来店予定時刻</label> <select
				class="custom-select mr-sm-2" id="inlineFormCustomSelect">
				<option selected>選択してください</option>
				<option value="1">19:30</option>
				<option value="2">19:35</option>
				<option value="3">19:40</option>
				<option value="4">19:45</option>
				<option value="5">19:50</option>
				<option value="6">19:55</option>
			</select>
		</div>
		</div>
		<br>

		<div class="row">
		<div class="col">
			<label class="mr-sm-2" for="inlineFormCustomSelect">来店人数</label>
			<select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
				<option selected>選択してください</option>
				<option value="1">1名</option>
				<option value="2">2名</option>
				<option value="3">3名</option>
				<option value="4">4名</option>
			</select>
		</div>
	</div>
	<br>


		<div class="row">
		<div class="col">
		<button class="btn btn-lg btn-warning btn-block" type="submit">予約内容を確認する</button>
		</div>

		</div>
<br>
	<div class="row">
		<div class="col">
		<button class="btn btn-outline-secondary btn-sm" type="button" onclick="location.href='Tanae-ShopProfile'">店舗詳細に戻る</button>
		</div>
		</div>
	</form:form>
	</div>

	 <footer class="container">
        <p class="float-right"></p>
        <p>&copy; 2018 VandR System &middot;</p>
      </footer>
</body>
</html>
