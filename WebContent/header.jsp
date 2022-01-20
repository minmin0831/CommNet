<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String email = (String)session.getAttribute("idKey");
	if(email != null) {
%>
<jsp:useBean id="userMgr" class="user.UserMgr" />
<% 
	String name = userMgr.getName(email);
%>
	<header class="login_yes">
		<a href=""><img class="logo" src="images/logo.jpg.png" alt="logo_home"></a>
		<div class="community">
			<form action="">
				<select class="community_dropdown" name="community">
					<option value="0" selected>My Communities</option>
					<option value="Tesla News">Tesla News</option>
					<option value="Metaverse">Metaverse</option>
					<option value="Mavel Theory">Mavel Theory</option>
					<option value="National Geographic GIFS">National Geographic GIFS</option>
				</select>
			</form>
		</div>
		<div class="search">
			<form action="">
				<input class="search_input_sm" type="text" placeholder="search contents">
			</form>
		</div>
		<div class="quiz">
			<a href=""><input type="button" value="quiz"></a>
		</div>
		<div class="popular">
			<a href=""><input type="button" value="popular"></a>
		</div>
		<div class="chat">
			<a href=""><input type="button" value="chat"></a>
		</div>
		<div class="noti">
			<a href=""><input type="button" value="noti"></a>
		</div>
		<div class="create_post">
			<a href=""><input type="button" value="create_post"></a>
		</div>
		<div class="mypage">
			<a href=""><input type="button" value="mypage"></a>
		</div>
	</header>
<%
	} else {
%>
	<header class="logoin_no">
		<a href=""><img class="logo" src="images/logo.jpg.png" alt="logo_home"></a>
		<div class="search">
			<form action="">
				<input class="search_input_lg" type="text" placeholder="search contents">
			</form>
		</div>
		<div class="signup">
			<a href="index.jsp?content=signup.jsp"><button id="signup" type="button">Sign Up</button></a>
		</div>
		<div class="login">
			<a href="index.jsp"><button id="login" type="button">Log In</button></a>
		</div>
	</header>
<%
	}
%>