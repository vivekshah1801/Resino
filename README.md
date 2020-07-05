# Resino-Backend


### Installation Guide

* The backend for this repo is handled using APIs created using **nodejs**.

* Node version used : 12.17.0
	
* Node modules needed :
	- body-parser
	- express
	- mysql

* Further, setup mysql database server. Run *run.sql* to create tables. Change credentials in *app.js* with your local database configurations
 
---

### Features

* The admin can add subjects as per latest syllabus and add exams as soon as taken by university

* The enduser can make requests to register as a new user, enter his/her marks in the system which will further be stored in **mysql** database.

* After adding all the information, user can view his/her performance till current semester and view insights about the same.


---

### CSV to Database ingestion

* TO validate the csv file, run the csvvalidator.py file

* If output of first file return with prompt then run next command
	python csv_db.py "localhost" "username" "password" "database_name" "port"

		Ex: python csv_db.py localhost root dhruval csi 3307

* If output print any message then solve it.
