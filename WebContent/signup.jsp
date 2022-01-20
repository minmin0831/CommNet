<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:useBean id="uMgr" class="user.UserMgr" />

<%
	request.setCharacterEncoding("utf-8");

	String email = "";
	if(request.getParameter("email") != null) {
		email = request.getParameter("email");
	};
	
	boolean result = uMgr.checkEmail(email);
	System.out.println("email: " + email);
%>
	<!-- signup_modal -->
	<div class="modal_background">
		<div class="signup_modal">
			<form name="email_form" class="signup_form" action="index.jsp?content=signup.jsp" method="post">
				<div class="message">
					<!-- email_mesage -->
					<div class="email_message">
						<span class="title">Sign up</span><br>
						<span class="desc">By continuing, you are setting up an account and agree to our user Agreement and Privacy
							Policy.</span>
					</div>
					<!-- skip_button -->
					<div class="skip_button">
						<strong><input class="skip" type="button" value="skip"></strong>
					</div>
					<!-- close_button -->
					<div class="close_button">
						<a href="index.jsp?content=none.jsp"><strong><button class="close" type="button">close</button></strong></a>
					</div>
				</div>
				<!-- email_input -->
				<div class="email_input">
					<input name="email" class="input_email" type="text" placeholder="enter email and verify it" value="<%=email%>" required />
					<input name="verify_email" class="button_verify" type="submit" value="verify"
						onclick="javascript: form.action='index.jsp?content=signup.jsp'">
				</div>
				<%
				if(result || email.equals("") || email.equals(null)) {
				%>
				<!-- continue button email -->
				<div class="continue_email">
					<input class="continue" id="continue_email" type="submit" value="Continue" 
					onclick="javascript: form.action='index.jsp?content=signup.jsp'" />
				</div>
				<%
				} else {
				%>
				<div class="continue_email">
					<input class="continue" id="continue_email" type="submit" value="Continue"
					onclick="javascript: form.action='index.jsp?content=username.jsp'" />
				</div>
				<%
				}
				%>
				<div class="option_login">
					<span>Already have an acconut?</span>
					<a href=""><span>LOGIN</span></a>
				</div>
			</form>
			<div class="result">
				<!-- email require message -->
				<div class="email_require">
					<span>Please enter your email address.</span>
				</div>
				<%
				if(result){
					/* msg = "This email is not available.";
					availability = "email_unavailable"; */
					System.out.println(result);
				%>
				<div class="email_unavailable" style="color: #4a86e8ff;">
					<span>This email address is unavailable.</span>
				</div>
				<%
				} else {
					System.out.println(result);
					
					if(email != "") {
				%>
				<div class="email_available" style="color: #4a86e8ff;">
					<span>This email address is available.</span>
				</div>
				<%
					} else {
						%>
						<div class="email_blank" style="color: #4a86e8ff; display: none;">
							<span>Please enter your email address.</span>
						</div>
						<%
					}
				}
				%>
			</div>
		</div>
	</div>
	