# Add plugin to pom.xml
    	<plugin>
   			 <groupId>org.sonatype.ossindex.maven</groupId>
   			 <artifactId>ossindex-maven-plugin</artifactId>
   			 <configuration>
   			<reportFile>${project.build.directory}/audit-report.json</reportFile>
<fail>false</fail>
   			 </configuration>
   			 <executions>
   				 <execution>
   					 <id>audit-dependencies</id>
   					 <phase>validate</phase>
   					 <goals>
   						 <goal>audit</goal>
   					 </goals>
   				 </execution>
   			 </executions>
   		 </plugin>

# Default Build docker image some time not work if override the CMD
    Maven CLI
        mvn ossindex:audit -Dossindex.reportFile=target/audit-report.json
    Or
        maven validate
    
    Exclude Vulnerabilities the basis of id
        mvn ossindex:audit -Dossindex.excludeVulnerabilityIds=39d74cc8-457a-4e57-89ef-a258420138c5
    Exclude Vulnerabilities on the basis of file
        mvn ossindex:audit -Dossindex.excludeCoordinates=commons-fileupload1.3
    Fail the build if any vulnerabilities
        mvn ossindex:audit -Dossindex.fail=true




