
function checkPassword() {
  let username = document.username_form.username;
  let password = document.username_form.password;
  let password_confirm = document.username_form.password_confirm;

  if(password.value == "") {
    $(".password_require").css("display", "block");
    password.focus();
    if(password_confirm.value == "") {
      $(".password_confirm_require").css("display", "block");
      password_confirm.focus();
    } else {
      $(".password_confirm_require").css("display", "none");
    }
  } else {
    $(".password_require").css("display", "none");
    $(".password_confirm_require").css("display", "none");
    if (password.value != password_confirm.value) {
      $(".unmatched_passwords").css("display", "block");
      password_confirm.focus();
    } else {
      $(".password_require").css("display", "none");
      $(".password_confirm_require").css("display", "none");
      $(".unmatched_passwords").css("display", "none");
      $(".continue").attr("onclick", "location.href='index.jsp?content=options.jsp'");
    }
  }
  
  if(password_confirm.value == "") {
    $(".password_confirm_require").css("display", "block");
    password_confirm.focus();
    if(password.value == "") {
      $(".password_require").css("display", "block");
      password.focus();
    } else {
      $(".password_require").css("display", "none");
    }
  } else {
    $(".password_require").css("display", "none");
    $(".password_confirm_require").css("display", "none");
    if (password.value != password_confirm.value) {
      $(".unmatched_passwords").css("display", "block");
      password_confirm.focus();
    } else {
      $(".password_require").css("display", "none");
      $(".password_confirm_require").css("display", "none");
      $(".unmatched_passwords").css("display", "none");
    }
  }

  if(username.value == "") {
    $(".username_require").css("display", "block");
    username.focus();
  } else {
    $(".username_require").css("display", "none");
    
    if (password.value != password_confirm.value) {
      $(".unmatched_passwords").css("display", "block");
      password_confirm.focus();
    } else {
      $(".password_require").css("display", "none");
      $(".password_confirm_require").css("display", "none");
      $(".unmatched_passwords").css("display", "none");
    }
  }
  console.log(username);
  console.log(password);
  console.log(password_confirm);
  //document.password_form.submit();
};

function continueGender() {
	$(".gender_message").css("display", "none");
  $(".topics_message").css("display", "block");
  $(".gender_input").css("display", "none");
  $(".topics_input").css("display", "block");
  $(".continue_gender").css("display", "none");
  $(".continue_topics").css("display", "block");
	console.log("continueGender function called.");
};

function continueTopics() {
	$(".topics_message").css("display", "none");
  $(".communities_message").css("display", "block");
  $(".topics_input").css("display", "none");
  $(".communities_input").css("display", "block");
  $(".continue_topics").css("display", "none");
  $(".continue_communities").css("display", "block");
	console.log("continueTopics function called.");
};

function continueCommunities() {
	$(".communities_message").css("display", "none");
  $(".done_message").css("display", "block");
  $(".communities_input").css("display", "none");
  $(".continue_communities").css("display", "none");
  $(".submit_done").css("display", "block");
	console.log("continueCommunities function called.");
};
