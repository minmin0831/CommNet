<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String email = (String)session.getAttribute("idKey");
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<style>
	</style>
</head>
<body>
<%
	if(email != null) {
%>
<jsp:useBean id="userMgr" class="user.UserMgr" />
<% 
	String name = userMgr.getName(email);
%>
<nav>
<img class="logo" src="images/logo.jpg.png" alt="logo_home">
	<div class="community">
		<form action="selectCommunity">
			<select name="community">
				<option value="0" selected>My Communities</option>
				<option value="Tesla News">Tesla News</option>
				<option value="Metaverse">Metaverse</option>
				<option value="Mavel Theory">Mavel Theory</option>
				<option value="National Geographic GIFS">National Geographic GIFS</option>
			</select>
		</form>
	</div>
	<div class="search">
		<form action="searchContents">
			<input type="text" placeholder="search contents">
		</form>
	</div>
	<div class="quiz">
		<input type="button" value="quiz">
	</div>
	<div class="popular">
		<input type="button" value="popular">
	</div>
	<div class="chat">
		<input type="button" value="chat">
	</div>
	<div class="noti">
		<input type="button" value="noti">
	</div>
	<div class="create_post">
		<input type="button" value="create_post">
	</div>
	<div class="mypage">
		<input type="button" value="mypage">
	</div>
</nav>
<%
	} else {
%>
<nav>
	<img class="logo" src="images/logo.jpg.png" alt="logo_home">
	<div class="search">
		<form action="searchContents">
			<input type="text" placeholder="search contents">
		</form>
	</div>
	<div class="signup">
		<input type="button" value="Sign Up">
	</div>
	<div class="login">
		<input type="button" value="Log In">
	</div>
</nav>
<%
	}
%>

</body>
</html>