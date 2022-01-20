<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:useBean id="uMgr" class="user.UserMgr" />
<jsp:useBean id="bean" class="user.UserBean" />

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
%>
	<!-- signup_modal -->
	<div class="modal_background">
		<div class="signup_modal">
			<form name="signup_form" class="signup_form" action="" method="post">
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
						<label><input type="radio" name="woman" id="woman" value="woman"><span>Woman</span></label>
						<label><input type="radio" name="man" id="man" value="man"><span>Man</span></label>
						<label><input type="radio" name="non_binary" id="non_binary"
								value="non_binary"><span>Non-binary</span></label>
						<label><input type="radio" name="I_prefer_not_to_say" id="I_prefer_not_to_say"
								value="I_prefer_not_to_say"><span>I prefer not to say</span></label>
					</p>
				</div>
				<!-- continue button gender -->
				<div class="continue_gender">
					<input class="continue" id="continue_gender" type="button" value="continue" onclick="continueGender();" />
				</div>
				<!-- topics_input -->
				<div class="topics_input">
					<p class="topics_checkbox">
						<label><input type="checkbox" name="advice" id="advice" value="advice"><span>advice</span></label>
						<label><input type="checkbox" name="animal" id="animal" value="animal"><span>animal</span></label>
						<label><input type="checkbox" name="business" id="business" value="business"><span>business</span></label>
						<label><input type="checkbox" name="computer_science" id="computer_science"
								value="computer_science"><span>computer science</span></label>
						<label><input type="checkbox" name="economics" id="economics"
								value="economics"><span>economics</span></label>
						<label><input type="checkbox" name="environment" id="environment"
								value="environment"><span>environment</span></label>
						<label><input type="checkbox" name="music" id="music" value="music"><span>music</span></label>
						<label><input type="checkbox" name="politics" id="politics" value="politics"><span>politics</span></label>
						<label><input type="checkbox" name="sports" id="sports" value="sports"><span>sports</span></label>
						<label><input type="checkbox" name="universe" id="universe" value="universe"><span>universe</span></label>
					</p>
				</div>
				<!-- continue button topics -->
				<div class="continue_topics">
					<input class="continue" id="continue_topics" type="button" value="continue" onclick="continueTopics();" />
				</div>
				<!-- communities_input -->
				<div class="communities_input">
					<p class="communities_checkbox">
						<label><input type="checkbox" name="we_care_animals" id="we_care_animals" value="we_care_animals">
							<span class="community_name">We Care Animals<span><br>Let's raise ethical awareness about the
									animals.</span></span>
						</label>
						<label><input type="checkbox" name="tech_geeks" id="tech_geeks" value="tech_geeks">
							<span class="community_name">Tech Geeks<span><br>Let's share new technologies and your
									knowledge.</span></span>
						</label>
						<label><input type="checkbox" name="business_insiders" id="business_insiders" value="business_insiders">
							<span class="community_name">Business Insiders<span><br>Find out the business trends around the
									world.</span></span>
						</label>
						<label><input type="checkbox" name="environment_watch" id="environment_watch" value="environment_watch">
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
					<input class="continue" id="submit_done" type="button" value="done">
				</div>
				<div class="option_login">
					<span>Already have an acconut?</span>
					<a href=""><span>LOGIN</span></a>
				</div>
			</form>
		</div>
	</div>