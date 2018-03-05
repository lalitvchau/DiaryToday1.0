<!DOCTYPE html>
<html>
	<head>
		<asset:javascript src="application.js"/>
		<meta name="layout" content="main"/>
		<title>Welcome to DiaryToday</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 45%;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
				height:550px;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}
			#signInBtn:hover{
				
				border: 2px solid #017f37;
				color:#017f37;
				cursor:pointer
			}
			#signUpBtn:hover{
				
				border: 2px solid #6a00ff;
				color:#6a00ff;
				cursor:pointer;
			}
			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 8em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
				height:100%;
			}
			table{
				width:100%;
			}
			@media screen and (max-width: 100%) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
				td{
					width:50%;
				   margin:0px;
				}
			}
		    g{
			   border-radius:10px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		
		<div id="page-body" role="main" style="height:100%">
			

			<div id="controller-list" role="navigation">
				
			</div>
			<table width="100%" margin:"0px" padding="0" height="750px">
			<tr>
			<td width="45%" style="border-right-width:2px;">
			     <h1 style="color:white;"><strong>Login</strong></h1><hr/><br/>
				 <g:form  controller="User" action="login">
				 <table width="100%">
					<tr>
						<td>
							<p style="color:red;">${session.errorLogin}<% session.errorLogin=null %></p>
						</td>
					</tr>
					<tr>
						<td>
							<g:textField required="" style="height:30px;width:80%;border-radius:8px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);" name="username" id="username" placeholder="Enter Username" size="60"/>
						</td>
					</tr>
					<tr>
						<td>
							<g:passwordField required="" name="password" id="password" placeholder="Enter password" size="60" style="height:30px;width:80%;border-radius:8px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);" />
						</td>
					</tr>
					<tr>
						<td>
							<g:actionSubmit id="signInBtn" onclick="return validateLoginForm()"  action="login" controller="user" value="Sign in" width="60" style="height:40px;width:30%;border-radius:8px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);" />
						</td>
					</tr>
				</table>
					
				
				</g:form>
			</td >
			<td width="45%">
				<h1 style="color:white;"><strong>Sign up</strong></h1> <hr/><br/>
				<g:form controller="user">
				<table width="100%">
					<tr>
						<td>
							<p style="color:red;">${session.error}<% session.error=null %></p>
						</td>
					</tr>
					<tr>
						<td>
							<g:textField required="" name="username" nullable="false" id="username_signup" placeholder="Enter Username" size="60" style="height:30px;width:80%;border-radius:8px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);"/>
						</td>
					</tr>
					<tr>
						<td>
							<g:textField required="" name="name" id="name" placeholder="Enter your Name" size="60" style="height:30px;width:80%;border-radius:8px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);"/>
						</td>
					</tr>
					<tr>
						<td>
							<g:textField required="" name="city" id="city" placeholder="Enter your City" size="60" style="height:30px;width:80%;border-radius:8px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);"/>
						</td>
					</tr>
					
					<tr>
						<td>
							Male :<g:radio name="gender" checked="true" id="gender" value="Male" size="60" style="height:20px;width:10%;cursor:pointer;"/>
						
							Female :<g:radio name="gender" id="gender"  value="Female" size="60"style="height:20px;width:10%;cursor:pointer;"/>
						</td>
					</tr>
					<tr>
						<td>
							<g:passwordField required="" name="password" id="password_signup" placeholder="Enter password" size="60" style="height:30px;width:80%;border-radius:8px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);"/>
						</td>
					</tr>
					<tr>
						<td>
							<g:passwordField required="" name="cnfPassword" id="cnfPassword" placeholder="Re Enter password" size="60" style="height:30px;width:80%;border-radius:8px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);"/>
						</td>
					</tr>
					<tr>
						<td>
							<g:actionSubmit id="signUpBtn" onclick="return validateSignUpForm()" action="index" controller="user" value="Sign up" width="60" style="height:40px;width:30%;border-radius:8px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);"/>
						</td>
					</tr>
				</table>
				</g:form>
			</td>
			</tr>
		</table>
		</div>
	</body>
</html>
