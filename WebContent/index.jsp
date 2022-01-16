<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserBean" %>
<jsp:useBean id="userMgr" class="user.UserMgr" />
<%
request.setCharacterEncoding("UTF-8");
String email = request.getParameter("email");
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Community Network Web Service</title>
	<style>
		
	</style>
</head>
<body>
	<header>
		<jsp:include page="header.jsp" />
	</header>
	<main>
		<section>
			<jsp:include page="contents.jsp" />
		</section>
		<aside>
			<section class="top_communities">
				<jsp:include page="top_communities.jsp" />
			</section>
			<section class="create_community">
				<jsp:include page="create_community.jsp" />
			</section>
			<footer>
				<jsp:include page="footer.jsp" />
			</footer>
		</aside>
	</main>
</script>
</html>