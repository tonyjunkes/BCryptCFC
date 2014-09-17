<h1>BCryptCFC - BCrypt Hashing in ColdFusion</h1>
<cfscript>
	start = getTickCount();
	BCrypt = createObject("component", "BCrypt").init();
	salt = BCrypt.genSalt();
	hash = BCrypt.hashString("password", salt);

	writeOutput('<b>Hash: </b>' & hash & '<br>');
	writeOutput('<b>Check Hash: </b>' & BCrypt.checkString("password", hash) & '<br>');
	writeOutput('<b>Time In Seconds: </b>' & (getTickCount() - start) / 1000);
</cfscript>