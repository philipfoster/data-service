data-service: data transformation service for PAM Workflow engine
======================================================
Author: Nevin Zhu  
Technologies: JBoss Fuse 7.x, SpringBoot 2.1.6
Summary: The `data-service` is an app that interacts with an external system by accepting incoming data, performs data transformation and returns 
data back to the caller. 
Target Product: JBoss Fuse 7.x

What is it?
-----------

The `data-service` demonstrates how to expose REST API via camel route, performs data transformation and return data back to the caller

It contains the following parts:

1. Camel REST Components  
2. Freemarker Templates
3. JsonPath Parsing 



System requirements
-------------------

The application this project produces is designed to be run on maven 3.x

All you need to build this project is Java 8.0 (Java SDK 1.8) or later, Maven 3.0 or later.

 
Configure Maven
---------------

If you have not yet done so, you must [Configure Maven](p:/PAM/Raytheon - PAM 7 AWS Installation - v1.0.docx) before running the project.


Build and run the Project on Local Workstation
-----------------------------------------------

_NOTE: The following build command assumes you have configured your Maven user settings. If you have not, you must include Maven setting arguments on the command line. 

1. Open a command prompt and navigate to the root directory of this project where pom.xml is.
2. Type this command to build and run the project assuming this is running on your local workstation:

        >mvn clean install
        >java -jar target/data-service-0.0.1-SNAPSHOT.jar --spring.config.location=<path-to-propertyfile> --jpaconfig=<path-to-properties.xml> 

Build and run the Project on DEV environment
-----------------------------------------------

1. Open a command prompt and navigate to the root directory of this project.
2. Type this command to build and run the project assuming this is running on Malware's AWS DEV environment:

        >mvn clean install
        >java -jar target/data-service-0.0.1-SNAPSHOT.jar --spring.config.location=<path-to-propertyfile> --jpaconfig=<path-to-properties.xml>

Investigate the Console Output
------------------------------------

If the command is successful, you will see output similar to this:

----
  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::        (v2.1.6.RELEASE)

17:55:57.933 [main           ] INFO  amel.spring.SpringCamelContext - Total 20 routes, of which 20 are started
17:55:57.934 [main           ] INFO  amel.spring.SpringCamelContext - Apache Camel 2.23.2.fuse-750029-redhat-00001 (CamelContext: camel-1) started in 0.688 seconds
17:55:57.939 [main           ] INFO  vlet.CamelHttpTransportServlet - Initialized CamelHttpTransportServlet[name=CamelServlet, contextPath=]
17:55:57.951 [main           ] INFO  org.xnio                       - XNIO version 3.3.8.Final
17:55:57.963 [main           ] INFO  org.xnio.nio                   - XNIO NIO Implementation Version 3.3.8.Final
17:55:58.047 [main           ] INFO  ertow.UndertowServletWebServer - Undertow started on port(s) 9000 (http) with context path ''
17:55:58.050 [main           ] INFO  ication.DataServiceApplication - Started DataServiceApplication in 3.81 seconds (JVM running for 4.366)
----
