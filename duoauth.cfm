<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <title>Duo Security 2-factor auth Tut - Enable Two-Factor Auth</title>
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>

    	     <!-- The Duo IFRAME  --->
	     <iframe id="duo_iframe" width="100%" height="500" frameborder="0"></iframe>

	    <script src="js/Duo-Web-v1.bundled.js" type="text/javascript"></script>        
	    <script>
		    Duo.init({
			'host': '<cfoutput>#application.duoAPIHost#</cfoutput>',
			'sig_request': '<cfoutput>#session.sigReq#</cfoutput>',
			'post_action': 'success.cfm'
		    });
	    </script>        

    </body>
</html>
