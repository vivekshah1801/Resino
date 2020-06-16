use csi;   #database name is csi


#Inserting values in  user table
INSERT 
INTO 
user(student_id,name,branch,sem,email,password,contact,university) 
VALUES('18ceuog092','dhruval','CE', 4, 'abc@gmaill.com','1234',1234567890 , 'Dharmsinh Desai University');

#Inserting values in  subject table

INSERT 
INTO 
subject(subject_id,subject_name,branch, sem,isViva, isPrac, isLab, credit, isElective )  
VALUES('JT001','Java Technology','CE', 4,1,0,1, 5, 1);

#Inserting values in  exam table
INSERT 
INTO 
exam(exam_id,exam_type,max_marks,exam_year,subject_id)
VALUES('CE001', 'sessional', 36, 2020, 'JT001');

#Inserting values in  marks table
INSERT 
INTO 
marks VALUES(32,'present','18ceuog092', 'ex01');


