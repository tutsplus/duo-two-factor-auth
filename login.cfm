<cfif isDefined( "form.username")>

	<!--- NOTE: At this point I would validate their normal uname/pwd against a database record 
	         and pull out the opt-in flag to see if I need to test for two-factor auth.
	         Since I have no DB for this demo I'm just going to force the validation here. --->
	<cfset checkTwoFactor = true>

	<cfif checkTwoFactor>
		
		<!--- Create the encrypted signature that needs to be passed to Duo --->
		<cfset session.sigReq = createObject("component","com.duoweb").signRequest( application.IKey, application.SKey, application.AKey, form.username ) /> 

		<!--- If you get a signed ID, all is good and we can test their mobile device --->
		<cfif trim( session.sigReq ) NEQ "">
			<cflocation url="duoauth.cfm" addtoken="true">
			<cfabort>
		</cfif>

	</cfif>

</cfif>

<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <title>Duo Security 2-factor auth Tut - Login</title>
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>

    	<div class="authy-form"> 
		<form method="post" class="user-form" action="login.cfm">

			<h2>Demo App Login</h2>
			
			<label for="username">Username</label>
			<input id="username" name="username" type="text" value="rogerwilcoroger@fakeemail.com" placeholder="Enter your username">

			<label for="pwd">Password</label>
			<input id="pwd" name="pwd" type="password" placeholder="Enter your password">

			<input type="submit" value="Login">			

		</form>
	</div>

    </body>
</html>
