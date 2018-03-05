<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<%@ page import="diarytoday.DiaryTodayUser" %>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
		<style type="text/css">
			#nav{
				background-color:white;
				width:100%;
				height:30px;
				text-align:justify;
				font-style:none;
				text-decoration:none;
				text-transform: capitalize;
				text-indent: 50px;
				letter-spacing: 3px;
				word-spacing: 8px;
				font-size:20px;
				line-height: 1.8;
				
			}
			
			a:link {
				text-decoration: none;
			}

			a:visited {
				text-decoration: none;
			}

			a:hover {
				text-decoration: none;
				border: 2px solid #6a00ff;
				border-radius: 5px;
				color:#6a00ff;
				cursor:pointer;
			}

			a:active {
				text-decoration: none;
			}

		</style>
	</head>
	<body>
		<div id="grailsLogo" style="text-shadow: 3px 2px 10px black;;text-indent: 50px;letter-spacing: 3px;line-height: 2.2;" role="banner">Diary<mark>Today</mark> <p align="right" style="color:orange;text-shadow: 1px 1px  black;text-indent: 50px;letter-spacing: 3px;">${DiaryTodayUser.findByUsername(session.username).name} (${session.username})</p></br> </div>
		<div id="nav"><g:link action="home"> &nbspHome&nbsp </g:link> <g:link action="profile"> &nbspProfile&nbsp </g:link>&nbsp <g:link action="logout"> &nbspLogOut&nbsp </g:link></div>
		<g:layoutBody/>
		<div class="footer" role="contentinfo" style="text-align:center;color:lightblue;"><span style="text-shadow: 3px 2px 10px black;text-indent: 50px;letter-spacing: 3px;line-height: 2.2;">Diary<mark>Today</mark> </span>© 2018 LaLit V'chau. </div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>
