// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}
function validateLoginForm() {
    var user = document.getElementById('username').value;
	var pass = document.getElementById('password').value;
    if (user == "") {
        alert(" Sign in Username should not blank !");
        return false;
    }
	if (user.length < 4) {
        alert(" Sign in  Username should be more then 3 characheter long" );
        return false;
    }
	if (pass == "") {
        alert(" Sign in  Password should not blank !");
		return false;
    }
	if (pass.length <= 4) {
        alert("Sign in Password should be more then 4 characheter long" );
		return false;
    }
	
}
function validateForm() {
    var x = document.getElementById('msg').value;
    if (x == "") {
        alert("Msg must be filled out");
		return false;
    }
	if (x.length <= 10) {
        alert("Status should be more then 10 characheter long" );
		return false;
    }
	
}

function validateSignUpForm() {
	var user = document.getElementById('username_signup').value;
	var pass = document.getElementById('password_signup').value;
	var cnfPassword = document.getElementById('cnfPassword').value;
    if (user == "") {
        alert(" Sign Up Username should not blank !");
		return false;
    }
	 if (cnfPassword!=pass) {
        alert(" Conform password Missmatch !");
		return false;
    }
	if (user.length <= 4) {
        alert(" Sign Up  Username should be more then 4 characheter long" );
		return false;
    }
	if (user.search(" ")>=0) {
        alert(" Sign Up  Username should contain space" );
		return false;
    }
	if (pass == "") {
        alert(" Sign Up Password should not blank !");
		return false;
    }
	if (pass.length <= 4) {
        alert("Sign Up Password should be more then 4 characheter long" );
		return false;
    }
	var name = document.getElementById('name').value;
    if (name == "") {
        alert(" Sign Up Name should not blank !");
		return false;
    }
	if (name.length <= 4) {
        alert(" Sign Up  Name should be more then 4 characheter long" );
		return false;
    }
	
    if (document.getElementById('cnfPassword') == "") {
        alert(" Sign Up Conform Password should not blank !");
		return false;
    }
	
	var city = document.getElementById('city').value;
    if (city == "") {
        alert(" Sign Up City should not blank !");
		return false;
    }
	
	
}