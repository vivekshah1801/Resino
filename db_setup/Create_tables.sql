#--Query to create user table
CREATE TABLE user (

	 student_id  varchar(20) PRIMARY KEY NOT NULL,
	 name	  varchar(255) NOT NULL,
	 branch varchar(30),
	 sem int,
	 email varchar(20) NOT NULL,
	 password varchar(20) NOT NULL,
	 contact varchar(20),
	 university varchar(100)
      
);

#--Query to create subject table

CREATE TABLE subject (
	 subject_id  varchar(20) PRIMARY KEY NOT NULL,
	 Subject_name  varchar(255) NOT NULL,
      branch varchar(30),
	 sem int,
	isViva BOOLEAN,
	isPrac BOOLEAN,
	isLab BOOLEAN,
	credit varchar(4),
	isElective BOOLEAN
	
)

#--Query to create exam table

CREATE TABLE exam (

	exam_id varchar(20) PRIMARY KEY NOT NULL,
	exam_type varchar(20) ,
	max_marks int,
	exam_year int,
	subject_id varchar(20),
          FOREIGN KEY(subject_id) REFERENCES subject(subject_id)
);

-#-Query to create marks table

CREATE TABLE marks (

	marks_obtained int(10),
	marks_status varchar(10),
            exam_id varchar(20),
            student_id  varchar(20),
	FOREIGN KEY(student_id) REFERENCES  user(student_id),
	FOREIGN KEY(exam_id) REFERENCES  exam(exam_id)
	
);


