<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:useBean id="uMgr" class="user.UserMgr" />

<%
	request.setCharacterEncoding("UTF-8");

	String email = "";
	if(request.getParameter("email") != null) {
		email = request.getParameter("email");
	};
	System.out.println(email);

	String username = "";
	if(request.getParameter("username") != null) {
		username = request.getParameter("username");
	};
	System.out.println(username);
	
	String password = "";
	if(request.getParameter("password") != null) {
		password = request.getParameter("password");
	};
	System.out.println(password);
	
	String password_confirm = "";
	if(request.getParameter("password_confirm") != null) {
		password_confirm = request.getParameter("password_confirm");
	};
	System.out.println(password_confirm);
	
	boolean result = uMgr.checkUsername(username);
	System.out.println("username: " + username);
	
	boolean result_email = uMgr.checkEmail(email);
	System.out.println("email: " + email);
%>
	<!-- signup_modal -->
	<div class="modal_background">
		<div class="signup_modal">
			<form name="username_form" class="signup_form" action="index.jsp?content=username.jsp" method="post">
				<div class="message">

					<!-- username_password_message -->
					<div class="username_password_message">
						<span class="title">Sign up</span><br>
						<span class="desc">Your user name is how other community members will see you. This name will be used to
							credit you for things you share here. What should we call you?</span>
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
				<!-- username_password_input -->
				<div class="username_password_input">
					<input name="username" class="input_username" type="text" placeholder="choose a username" value="<%=username %>" required />
					<input name="verify_username" class="button_verify" type="submit" value="verify"
						onclick="javascript: form.action='index.jsp?content=username.jsp'">

					<input name="password" class="input_password" type="password" placeholder="type in your password" value="<%=password %>" required />

					<input name="password_confirm" class="input_password_confirm" type="password"
						placeholder="confirm your password" value="<%=password_confirm %>" required />
				</div>
				<%
				if(result || 
						username.equals(null) || 
						username.equals("") || 
						password.equals(null) ||
						password.equals("") ||
						password_confirm.equals(null) ||
						password_confirm.equals("") ||
						!password.equals(password_confirm)) {
				%>
				<div class="continue_username_password">
					<input class="continue" id="continue_username_password" type="submit"
						onclick="javascript: form.action='index.jsp?content=username.jsp'" />
				</div>
				<%
				} else {
				%>
				<div class="continue_username_password">
					<input class="continue" id="continue_username_password" type="submit"
						onclick="javascript: form.action='index.jsp?content=options.jsp'" />
				</div>
				<%
				}
				%>
				<div class="option_login">
					<span>Already have an acconut?</span>
					<a href=""><span>LOGIN</span></a>
				</div>
				
				<input name="email" type="hidden" value="<%=email %>" />
				
			</form>

			<div class="result">
				<%
				if(result){
					/* msg = "This email is not available.";
					availability = "email_unavailable"; */
					System.out.println(result);
				%>
				<div class="username_unavailable" style="color: #4a86e8ff;">
					<span>This user name is unavailable.</span>
				</div>
				<%
				} else {
					System.out.println(result);
					
					if(username != "") {
				%>
				<div class="username_available" style="color: #4a86e8ff;">
					<span>This user name is available.</span>
				</div>
				<%
					} else {
						%>
						<div class="username_blank" style="color: #4a86e8ff; display: none;">
							<span>Please enter your user name.</span>
						</div>
						<%
					}
				}
				%>
				<!-- password_require message -->
				<div class="password_require">
					<span>Please enter your password.</span>
				</div>
				<!-- password_confirm_require message -->
				<div class="password_confirm_require">
					<span>Please enter your password to confirm.</span>
				</div>
				<!-- unmatched_passwords message -->
				<div class="unmatched_passwords">
					<span>Passwords do not match.</span>
				</div>
			</div>
		</div>
	</div>