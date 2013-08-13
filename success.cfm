
<!--- Get the return value from Duo and verify that it returns the username --->
<cfset authUser = createObject("component","com.duoweb").verifyResponse( application.IKey, application.SKey, application.AKey, form.sig_response ) /> 

<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <title>Duo Security 2-factor auth Tut - Did You Get In?</title>
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>

    	<div class="authy-form"> 
    		<h1><cfif trim( authUser ) EQ "rogerwilcoroger@fakeemail.com">
	    		Yay! We're in!!!
	    	<cfelse>
	    		You ain't getting in!!
    		</cfif></h1>    			

	</div>

    </body>
</html>
