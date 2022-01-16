const buttons = document.querySelectorAll("input");
for (let i = 0; i < buttons.length; i++) {
  buttons[i].addEventListener("click", () => {
    console.log(`a button for ${buttons[i].value} is clicked.`);
  });
};

// signup modal open and close
let signup = document.querySelector("#signup");
let modal_background = document.querySelector(".modal_background");
signup.addEventListener('click', () => {
	modal_background.style.display = "block";
});
let close = document.querySelector(".close");
close.addEventListener('click', () => {
	modal_background.style.display = "none";
});

// $("#advice").on('click', () => {
// 	let advice = document.querySelector("#advice");
// 	console.log(advice.checked);
// });

// continue from email
$(".close").on('click', () => {
	$(".email_message").css("display", "block");
	$(".username_password_message").css("display", "none");
	$(".gender_message").css("display", "none");
	$(".topics_message").css("display", "none");
	$(".communities_message").css("display", "none");
	$(".done_message").css("display", "none");
	$(".submit_done").css("display", "none");

	$(".email_input").css("display", "block");
	$(".username_password_input").css("display", "none");
	$(".gender_input").css("display", "none");
	$(".topics_input").css("display", "none");
	$(".continue_communities").css("display", "none");
	
	$(".continue_email").css("display", "block");
	$(".continue_username_password").css("display", "none");
	$(".continue_gender").css("display", "none");
	$(".continue_topics").css("display", "none");
	$(".continue_communities").css("display", "none");
	$(".submit_done").css("display", "none");

	$(".skip_button").css("display", "none");
});

$(".option_login a").on('click', () => {
	$(".email_message").css("display", "block");
	$(".username_password_message").css("display", "none");
	$(".gender_message").css("display", "none");
	$(".topics_message").css("display", "none");
	$(".communities_message").css("display", "none");
	$(".done_message").css("display", "none");
	$(".submit_done").css("display", "none");

	$(".email_input").css("display", "block");
	$(".username_password_input").css("display", "none");
	$(".gender_input").css("display", "none");
	$(".topics_input").css("display", "none");
	$(".continue_communities").css("display", "none");

	$(".continue_email").css("display", "block");
	$(".continue_username_password").css("display", "none");
	$(".continue_gender").css("display", "none");
	$(".continue_topics").css("display", "none");
	$(".continue_communities").css("display", "none");
	$(".submit_done").css("display", "none");

	$(".skip_button").css("display", "none");
});

$("#continue_email").on('click', () => {
	$(".email_message").css("display", "none");
	$(".username_password_message").css("display", "block");
	$(".email_input").css("display", "none");
	$(".username_password_input").css("display", "block");
	$(".continue_email").css("display", "none");
	$(".continue_username_password").css("display", "block");
});
$("#continue_username_password").on('click', () => {
	$(".username_password_message").css("display", "none");
	$(".gender_message").css("display", "block");
	$(".username_password_input").css("display", "none");
	$(".gender_input").css("display", "block");
	$(".continue_username_password").css("display", "none");
	$(".continue_gender").css("display", "block");
	$(".skip_button").css("display", "block");
});
$("#continue_gender").on('click', () => {
	$(".gender_message").css("display", "none");
	$(".topics_message").css("display", "block");
	$(".gender_input").css("display", "none");
	$(".topics_input").css("display", "block");
	$(".continue_gender").css("display", "none");
	$(".continue_topics").css("display", "block");
});
$("#continue_topics").on('click', () => {
	$(".topics_message").css("display", "none");
	$(".communities_message").css("display", "block");
	$(".topics_input").css("display", "none");
	$(".communities_input").css("display", "block");
	$(".continue_topics").css("display", "none");
	$(".continue_communities").css("display", "block");
});
$("#continue_communities").on('click', () => {
	$(".communities_message").css("display", "none");
	$(".done_message").css("display", "block");
	$(".communities_input").css("display", "none");
	$(".continue_communities").css("display", "none");
	$(".submit_done").css("display", "block");
});

console.log(document.signup_form.email.value);
