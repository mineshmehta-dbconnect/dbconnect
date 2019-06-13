# DBconnect API (Mule Implementation)

The application provides the restful(https based) API to manage the following the entity of the database.
	- contact
	- contact-address.
	- contact-communication

The ER diagram describes the database table structure and the relationship and the SQL-file contains the table creation script.
	Database ER Diagram: DB_Schema_ERD.pdf and DB_Schema_ERD.png
	Database table creation script: Create_contact_tables.sql

Security: The API is protected with the Basic Authentication.
Please send me an email to get the credentials. mineshmehta+dbcontact@gmail.com 

Postman collection:dbcontact.postman_collection.json (without basic credentials) 
Console URL: https://dbcontact.us-e2.cloudhub.io/console
Anypoint portal URL: https://anypoint.mulesoft.com/exchange/portals/minsmehta

The list of configurable properties
api.id : The API ID from mulesoft API Manager. Used for autodiscovery
db.user : The database connection user name.
db.password : The database connection password.
db.host : The host name of the database instance.
db.port : The port of the database instance to connect.
db.name : The name of the database.

The application supports only MySQL database and deployed version connects to an AWS MySQL database instance. 

Steps to deploy the application.
1. Create the MySQL database.
2. Create the database table.
3. Create the MuleSoft API Manager instance. 
	Guide: https://developer.mulesoft.com/guides/quick-start/deploying-and-managing-your-first-api 
4. Download the source code and create the build. 
5. Configure the properties values on the cloudhub properties tab.
6. Deploy the application.

To Do:
1. Field level validation
	example. Type, Email , mobile, preferred
2. Adding the JSON example in the RAML
