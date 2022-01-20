<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="user.UserBean" %>

<jsp:useBean id="uMgr" class="user.UserMgr" />
<%
request.setCharacterEncoding("UTF-8");

String email_copy = request.getParameter("email");
String username_copy = request.getParameter("username");
String password_copy = request.getParameter("password");
String password_confirm_copy = request.getParameter("password_confirm");
String gender = request.getParameter("gender");
String[] topics = request.getParameterValues("topics");
String[] communities = request.getParameterValues("communities");

System.out.println("copy: " + email_copy);
System.out.println("copy: " + username_copy);
System.out.println("copy: " + password_copy);
System.out.println("copy: " + password_confirm_copy);
System.out.println("copy: " + gender);
System.out.println("copy: " + topics);
System.out.println("copy: " + communities);

String content = "none.jsp";
if(request.getParameter("content") != null) {
	content = request.getParameter("content");
}
//System.out.println(content);

%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Community Network Web Service</title>
	<link rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
</head>

<body>
	<jsp:include page="header.jsp" />
	
	<!-- main -->
	<main>
		<!-- main section -->
		<section>
			<div class="trending">
				<div class="best">
					<a href=""><input type="button" value="Best"></a>
				</div>
				<div class="hot">
					<a href=""><input type="button" value="Hot"></a>
				</div>
				<div class="new">
					<a href=""><input type="button" value="New"></a>
				</div>
				<div class="top">
					<a href=""><input type="button" value="Top"></a>
				</div>
			</div>
			<div class="contents">
				<div class="vote">
					<a href="" class="upvote"><img src="images/arrow_up.png" alt="upvote_button" width="20px"></a>
					<span class="vote_result">150</span>
					<a href="" class="downvote"><img src="images/arrow_down.png" alt="downvote_button" width="20px"></a>
				</div>
				<a href="">
					<div class="article">
						<div class="header">
							<a href=""><img src="images/tesla_thumbnail.png" alt="" class="community_thumbnail" width="30px"
									height="30px"></a>
							<span class="community_name"><strong>Tesla News</strong></span>
							<span class="author">by <strong>TeslaRider</strong></span>
						</div>
						<div class="title">News: New Model X is comming soon.</div>
						<div class="content_words">What's new is going to be revealed on this weekend's Tesla day. Can't wait to
							see!!!</div>
						<div class="additional_info">
							<img src="images/model_x.png" alt="uploaded_image" width="300px">
						</div>
					</div>
				</a>
			</div>
			<div class="contents">
				<div class="vote">
					<a href="" class="upvote"><img src="images/arrow_up.png" alt="upvote_button" width="20px"></a>
					<span class="vote_result">150</span>
					<a href="" class="downvote"><img src="images/arrow_down.png" alt="downvote_button" width="20px"></a>
				</div>
				<a href="">
					<div class="article">
						<div class="header">
							<a href=""><img src="images/tesla_thumbnail.png" alt="" class="community_thumbnail" width="30px"
									height="30px"></a>
							<span class="community_name"><strong>Tesla News</strong></span>
							<span class="author">by <strong>TeslaRider</strong></span>
						</div>
						<div class="title">News: New Model X is comming soon.</div>
						<div class="content_words">What's new is going to be revealed on this weekend's Tesla day. Can't wait to
							see!!!</div>
						<div class="additional_info">
							<img src="images/model_x.png" alt="uploaded_image" width="300px">
							<div class="poll_view">
								<table>
									<tr>
										<th>
											<div class="total_votes"><strong>100</strong> Votes</div>
										</th>
									</tr>
									<tr>
										<td>
											<div class="poll_item1"><strong>100</strong> Trunks</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="poll_item2"><strong>70</strong> No Trunks</div>
										</td>
									</tr>
								</table>
							</div>
						</div>
				</a>
			</div>
			</div>
		</section>
		<jsp:include page="aside.jsp" />
	</main>
	<jsp:include page="<%=content %>" />
	<form name="complete_form" method="post" action="">
		<input type="hidden" name="complete_email" value="<%=email_copy %>>">
		<input type="hidden" name="complete_username" value="<%=username_copy %>">
		<input type="hidden" name="complete_password" value="<%=password_copy %>">
		<input type="hidden" name="complete_password_confirm" <%=password_confirm_copy %>>
	</form>
</body>

</html>

