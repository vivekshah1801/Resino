import csv
with open('subjects.csv', 'r') as csvfile:
  reader = csv.reader (csvfile, delimiter=',',  quotechar='|')
  next(reader)
  c=0
  for row in reader:
    for j in range(0,10):
      try:
        if((row[j]=='')):
          print("Null value at row",c+2,"Col", j)
          break
      except:
          print("Column",j," missing at row",c+2)
    c+=1
     
