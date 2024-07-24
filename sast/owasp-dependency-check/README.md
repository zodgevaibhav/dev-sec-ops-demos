# Add plugin to pom.xml
    	<plugin>
               <groupId>org.owasp</groupId>
               <artifactId>dependency-check-maven</artifactId>
               <executions>
                   <execution>
                       <phase>validate</phase>

                       <goals>
                           <goal>check</goal>
                       </goals>
                   </execution>
               </executions>
           </plugin>


# Default Build docker image some time not work if override the CMD
	mvn validate
	mvn org.owasp:dependency-check-maven:check


# It's bit slow, but if we use NVD key it will run fast
	https://nvd.nist.gov/developers/request-an-api-key




