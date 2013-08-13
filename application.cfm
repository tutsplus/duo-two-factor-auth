<!--- initialize the application tag  --->
<cfAPPLICATION name="twoauth" sessionmanagement="Yes" setclientcookies="Yes" sessiontimeout="#createtimespan(0,1,0,0)#" scriptProtect="all">

<cfsetting enablecfoutputonly="No" showdebugoutput="Yes">
<cfset application.IKey = "<add your own key here>">
<cfset application.SKey = "<add your own key here>">
<cfset application.AKey ="<add your own key here>">
<cfset application.duoAPIHost = "<add your own API host here>">

