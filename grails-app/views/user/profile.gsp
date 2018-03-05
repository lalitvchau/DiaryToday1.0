<!DOCTYPE html>
<%@ page import="diarytoday.DiaryTodayUser" %>
<html>
	<head>
		<meta name="layout" content="mainUser"/>
		<title>Welcome to DiaryToday</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 80%;
				float: left;
				text-shadow:1px 1px 0px green;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
				 box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			}
			#update:hover{
				cursor:pointer;
				border: 2px solid #6a00ff;
				color:#6a00ff;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
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
				margin: 0em 1em 1.0em 20em;
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
			hr{
			    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
				line-height: 1.8;
			}
			#statusUser{
				box-shadow: 4px 4px 8px black;
				
				color:red;
				line-height: 0;
				border-bottom:5px;
				background-color: #fff;
				border: .2em solid #fff;
				margin: 1em 2em 1em;
				padding: 1em;
				width: 80%;
				float: left;
				box-radius:10px;
				border-radius: 0.6em;
			}
			#banner{
			   width:100%;
			   box-shadow: 4px 4px 8px black;
				
			   border-bottom:5px;
			  border-left: 56px solid red;
    background-color: lightgrey;
			   margin:25px 25px 25px 25px;
			   padding: 5px 5px 5px 5px;
			   color:while;
			   
			}
		
		</style>
	</head>
	<body>
		
		<div id="banner">
				<h1>Name : <Strong>${DiaryTodayUser.findByUsername(session.username).name}</Strong></h1>
				<h1>City : <Strong>${DiaryTodayUser.findByUsername(session.username).city}</Strong></h1>
				<h1>Gender : <Strong>${DiaryTodayUser.findByUsername(session.username).gender}</Strong></h1>
		</div>
		
		<div id="page-body" role="main">
			
			<div id="status" style="align:center;">
				Please update Your thought<br/><br/>
				<div>
				      <g:form action="save">
					        <g:textArea required="" rows="5" escapeHtml="true" cols="400" style="width:98%;border-radius:10px;" name="msg" placehole="write your status" id="msg"/>
							<br/><br/>
							<g:actionSubmit onclick="return validateForm()"  style="width:20%;border-radius:10px;" action="save" value="Update" id="update" name="update" />
					  </g:form>
				</div>
			</div>
			
			<g:each in="${status.list(sort:'date', order:'desc')}" var="obj">
			   <g:if test="${obj.username.equals(session.username)}">
				<div id="statusUser" style="align:center;">
                      <h4 style="color:#07799b;text-align:justify;"> <strong><p><pre style="font-size:12pt;">${obj.msg}</pre></p></strong></h4>
					 <hr/>
					 <h3 style="text-align:'justify';color:#04176d; text-style:bold;"><strong>${obj.name}&nbsp&nbsp(${obj.username})</strong>
					  <small style="text-align:'right';color:#ad4c7c;">${obj.date}</small>
					 </h3>
					 
				</div>
			   </g:if>
            </g:each>
			
		</div>
	</body>
</html>
