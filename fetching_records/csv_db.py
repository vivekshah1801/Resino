import mysql.connector
import csv
import sys

#mydb = mysql.connector.connect(host="localhost", user="root", passwd="dhruval", database="csi", port="3307", auth_plugin='mysql_native_password')
mydb = mysql.connector.connect(host=sys.argv[1], user=sys.argv[2], passwd=sys.argv[3], database=sys.argv[4], port=sys.argv[5], auth_plugin='mysql_native_password')
cursor = mydb.cursor()

csv_data = csv.reader(open('subjects.csv'),delimiter=',')
next(csv_data)
#print(sys.argv[1],sys.argv[2],sys.argv[3],sys.argv[4],sys.argv[5])
for row in csv_data:
	print(row)
	subject_id=row[0]
	subject_name=row[1]
	branch=row[2]
	sem=row[3]
	isViva=row[4]
	isPrac=row[5]
	isLab=row[6]
	credit=row[7]
	isElective=row[8]
	year=row[9]
	cursor.execute("""INSERT INTO subject(subject_id,Subject_name,branch, sem,isViva, isPrac, isLab, credit, isElective,year)
		VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)""",(subject_id,subject_name,branch,sem,isViva,isPrac,isLab,credit,isElective,year))
	mydb.commit()

cursor.execute("select * from subject")

#for i in cursor:
#	print(i)