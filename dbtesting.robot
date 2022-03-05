*** Settings ***

Library    DatabaseLibrary

Library    OperatingSystem


Suite Setup       Connect to Database         psycopg2    ${DBname}    ${DBuser}    ${DBpass}    ${DBhost}    ${DBport}
Suite Teardown    Disconnect From Database

*** Variables ***

${DBname}    db_robot
${DBuser}    postgres
${DBpass}    1234
${DBhost}    172.17.0.2
${DBport}    5432

*** Test Cases ***

Create person table
    ${output}=                    Execute SQL String    Create table if not exists person( id integer, first_name varchar(20), last_name varchar(20) );
    Log to console                ${output}
    Should Be Equal as strings    ${output}             None

Inserting Data in person Table
	${output}=                    Execute SQL String    Insert into person (id, first_name, last_name) values(100,'cael','tarifa');
	Log to console                ${output}
	Should Be Equal as strings    ${output}             None


Inserting Data in person Table
	${output}=                    Execute SQL Script    ./sql_script.sql
	Log to console                ${output}
	Should Be Equal as strings    ${output}             None

#Keywords for existential verification

Check cael record present in Person Table
	check if exists in database    select id from person where first_name='cael';

Check cael_not recor Not present in Person Table
	check if not exists in database    select id from person where first_name='cael_not';

Check Person Table exists in mydb database
	table must exist	person

Verify Row Count is Zero
	row count is 0    select * from person where first_name = 'xyz';

Verify Row Count is Equal to Some Value
	row count is equal to x    select * from person where id=100;    1

Verify Row Count is Greater than Some Value
	row count is greater than x    select * from person where first_name='cael';    0

Verify Row Count is Less than Some Value
	row count is less than x    select * from person where first_name='cael';    5

Update record in person table
	${output}=                    Execute SQL String    Update person set first_name='leac' where id=100;
	Log to console                ${output}
	Should be equal as strings    ${output}             None

Retrieve Records from Person Table
	@{queryResults}=	query	select * from person;
	Log to console	many @{queryResults}

Delete Records from person table
	${output}=                    Execute SQL String    Delete from person;
	Should Be Equal as Strings    ${output}             None