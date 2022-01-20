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
	
	String gender = "";
	if(request.getParameter("gender") != null) {
		gender = request.getParameter("gender");
	};
	System.out.println(gender);
	
	String[] topics = null;
	if(request.getParameterValues("topics") != null) {
		topics = request.getParameterValues("topics");
	};
	System.out.println(topics);
	
	String[] communities = null;
	if(request.getParameter("communities") != null) {
		communities = request.getParameterValues("communities");
	};
	System.out.println(communities);
	
	boolean result = uMgr.checkUsername(username);
	System.out.println("username: " + username);
	
	boolean result_email = uMgr.checkEmail(email);
	System.out.println("email: " + email);
	
	
	
	/* boolean result = uMgr.checkUsername(username);
	System.out.println("username: " + username); */
	
	
%>
	<!-- signup_modal -->
	<div class="modal_background">
		<div class="signup_modal">
			<form name="signup_form" class="signup_form" action="index.jsp?content=options.jsp" method="post">
				<div class="message">
					<!-- gender_message -->
					<div class="gender_message">
						<span class="title">Which of the following best describes you?</span><br>
						<span class="desc">We will never share this information and use it to improve what content you see.</span>
					</div>
					<!-- topics_message -->
					<div class="topics_message">
						<span class="title">What are you into?</span><br>
						<span class="desc">Select three topics to continue.</span>
					</div>
					<!-- communities_message -->
					<div class="communities_message">
						<span class="title">Join some communities!</span><br>
						<span class="desc">Recommended for you</span>
					</div>
					<!-- done_message -->
					<div class="done_message">
						<span class="title">We are happy you join us!</span><br>
					</div>
					<!-- done_message -->
					<div class="done_message">
						<span class="title">Somehow, we failed to sign you up. Please try again.</span><br>
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
				<!-- gender_input -->
				<div class="gender_input">
					<p class="gender_radio">
						<label><input type="radio" name="gender" value="woman"><span>Woman</span></label>
						<label><input type="radio" name="gender" value="man"><span>Man</span></label>
						<label><input type="radio" name="gender"	value="non_binary"><span>Non-binary</span></label>
						<label><input type="radio" name="gender" value="I_prefer_not_to_say"><span>I prefer not to say</span></label>
					</p>
				</div>
				<!-- continue button gender -->
				<div class="continue_gender">
					<input class="continue" id="continue_gender" type="button" value="continue" onclick="continueGender();" />
				</div>
				<!-- topics_input -->
				<div class="topics_input">
					<p class="topics_checkbox">
						<label><input type="checkbox" name="topics" value="advice"><span>advice</span></label>
						<label><input type="checkbox" name="topics" value="animal"><span>animal</span></label>
						<label><input type="checkbox" name="topics" value="business"><span>business</span></label>
						<label><input type="checkbox" name="topics" value="computer_science"><span>computer science</span></label>
						<label><input type="checkbox" name="topics" value="economics"><span>economics</span></label>
						<label><input type="checkbox" name="topics" value="environment"><span>environment</span></label>
						<label><input type="checkbox" name="topics" value="music"><span>music</span></label>
						<label><input type="checkbox" name="topics" value="politics"><span>politics</span></label>
						<label><input type="checkbox" name="topics" value="sports"><span>sports</span></label>
						<label><input type="checkbox" name="topics" value="universe"><span>universe</span></label>
					</p>
				</div>
				<!-- continue button topics -->
				<div class="continue_topics">
					<input class="continue" id="continue_topics" type="button" value="continue" onclick="continueTopics();" />
				</div>
				<!-- communities_input -->
				<div class="communities_input">
					<p class="communities_checkbox">
						<label><input type="checkbox" name="communities" value="we_care_animals">
							<span class="community_name">We Care Animals<span><br>Let's raise ethical awareness about the
									animals.</span></span>
						</label>
						<label><input type="checkbox" name="communities" value="tech_geeks">
							<span class="community_name">Tech Geeks<span><br>Let's share new technologies and your
									knowledge.</span></span>
						</label>
						<label><input type="checkbox" name="communities" value="business_insiders">
							<span class="community_name">Business Insiders<span><br>Find out the business trends around the
									world.</span></span>
						</label>
						<label><input type="checkbox" name="communities" value="environment_watch">
							<span class="community_name">Environment Watch<span><br>Check out our news feeds on
									environment.</span></span>
						</label>
					</p>
				</div>
				<!-- continue button communities -->
				<div class="continue_communities">
					<input class="continue" id="continue_communities" type="button" value="continue"
						onclick="continueCommunities();" />
				</div>
				
				<!-- done button communities -->
				<div class="submit_done">
					<a href="index.jsp"><input class="continue" id="submit_done" type="submit" value="done" /></a>
				</div>
				<div class="option_login">
					<span>Already have an acconut?</span>
					<a href=""><span>LOGIN</span></a>
				</div>
				
				<input name="email" type="hidden" value="<%=email %>" />
				<input name="username" type="hidden" value="<%=username %>" />
				<input name="password" type="hidden" value="<%=password %>" />
				<input name="password_confirm" type="hidden" value="<%=password_confirm %>" />
				
			</form>
		</div>
	</div>