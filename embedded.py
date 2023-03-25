import mysql.connector
mydb= mysql.connector.connect(host="localhost", user="root" ,passwd="bhavya")
mycursor=mydb.cursor()
mycursor.execute('show databases')

# Print the result set
for row in mycursor:
    print(row)

mycursor.execute('use bazar')

mycursor.execute('select* from admin where adminid=111')

for row in mycursor:
    print(row)
mycursor.execute('select* from product')

for row in mycursor:
    print(row)
    
sql = "UPDATE product SET price = %s WHERE productname = %s"
val = (19.99, "Beef Tenderloin Aaa")
mycursor.execute(sql, val)

mydb.commit()
mycursor.execute('select* from product where productname="Beef Tenderloin Aaa"')
for row in mycursor:
    print(row)
    
a= """SELECT c.FirstName, c.LastName, SUM(p.Payment_amount) AS total_paid
FROM customer c
INNER JOIN payment p ON c.Customer_ID = p.user_ID
GROUP BY c.Customer_ID;"""
mycursor.execute(a)
for row in mycursor:
    print(row)
    


