BCryptCFC
=========

A CFC and example for using the BCrypt Class for hashing and checking hashed strings.

#### Java Version Descrepancies

The BCrypt JAR file `jBcrypt-0.4` has been compiled using Java 8 and therefore is only usable via that version of Java. If you are using Java 7, use `jBcrypt-0.4-java7`. 

## How to use...

Loading up the Java Class file (BCrypt.class) to the classpath can be done in a few ways via dropping the Java Class in ColdFusion's global classes folder (be sure to restart CF after doing so), [JavaLoader](https://github.com/markmandel/JavaLoader) or, if you're running CF10+, Application.cfc's this.javaSettings.

Inside the Application.cfc would look like so:

`this.javaSettings = {loadPaths: ["./location/to/put/classes"], watchExtensions: "class"};`

From there, depending on how you called the .class file into your classpath, calling in BCrypt.cfc is as simple as...

`BCrypt = createObject("component", "BCrypt").init();`

You then have access to the necessary functions for hashing like so:

```coldfusion-cfc
salt = BCrypt.genSalt();
hash = BCrypt.hashString("password", salt);
writeOutput('<b>Hash: </b>' & hash & '<br>');
writeOutput('<b>Check Hash: </b>' & BCrypt.checkString("password", hash));
```
