<cfif isDefined( "form.turniton")>

	<!--- Create the encrypted signature that needs to be passed to Duo. Purposely hardcoded an email address to simulate an existing account --->
	<cfset session.sigReq = createObject("component","com.duoweb").signRequest( application.IKey, application.SKey, application.AKey, "rogerwilcoroger@fakeemail.com" ) /> 

	<!--- If you get a signed ID, all is good and we can test their mobile device --->
	<cfif trim( session.sigReq ) NEQ "">
		<cflocation url="duoauth.cfm" addtoken="true">
		<cfabort>
	</cfif>

</cfif>

<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <title>Duo Security 2-factor auth Tut - Enable Two-Factor Auth</title>
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>

    	<div class="authy-form"> 
		<form method="post" class="user-form" action="account-setup.cfm">

			<h2>Turn on Two-Factor Authentication</h2>
			
			<p>Name: Rey Bango <br />
			        Address: 1 Meadow Lane, Miami, FL 33111 <br />
			        Phone: 305-333-3333</p>

			<input type="submit" name="turniton" value="Turn it On!!">			

		</form>
	</div>

    </body>
</html>
