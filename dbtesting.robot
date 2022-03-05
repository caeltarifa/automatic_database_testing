*** Settings ***

Library     DatabaseLibrary

Library     OperatingSystem


Suite Setup     Connect to Database     psycopg2    ${DBname}   ${DBuser}   ${DBpass}   ${DBhost}   ${DBport}
Suite Teardown  Disconnect From Database

*** Variables ***

${DBname}   db_robot
${DBuser}   postgres
${DBpass}   1234
${DBhost}   172.17.0.2
${DBport}   5432

*** Test Cases ***

Create person table 
    ${output}=  Execute SQL String  Create table if not exists person( id integer, first_name varchar(20), last_name varchar(20) );
    Log to console     ${output}
    Should Be Equal as strings  ${output}   None

Inserting Data in person Table 
	${output}= Execute SQL String Insert into person values (100, "jhon");
	Log to console ${output}
	Should Be Equal as strings ${output}	None
