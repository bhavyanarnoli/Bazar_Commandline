import re

def solve(s):
   pat = "^[a-zA-Z0-9-_]+@[a-zA-Z0-9]+\.[a-z]{1,3}$"
   if re.match(pat,s):
      return True
   return False

from datetime import date
import mysql.connector
mydb= mysql.connector.connect(host="localhost", user="root" ,passwd="bhavya")
mycursor=mydb.cursor()
mycursor.execute('use bazar')
customerid=11101
customer=0
userfound=False
orderids=10101
#check if admin
while(True):
    print("1.Sign up")
    print("2.Log In")
    print("3.See all product categories")
    print("4.See all products under a productcategory")
    print("5.See products in cart")
    print("6.Order products from your cart")
    print("7.Exit")
    inuu= int(input())
    if( inuu ==1):
        firstnme=input()
        lastnme=input()
        phoneno=input()
        assert len(phoneno)==10,'Only 10 digits allowed'
        email=input("enter your email-id")
        assert(solve(email)),"Email id isn't valid"
        address= input()
        mycursor.execute('INSERT INTO Customers (Customer_ID,firstname, lastname, Phone_No, email_ID, Address)VALUES (customerid, firstnme, lastnme, phoneno,email , address);')
        customerid+=1
        print('inserted(1)row')
    elif(inuu ==2):
        username=input()   
        password=input()
        mycursor.execute('SELECT * from credentials WHERE credentials.username==username AND credentials.password==password);')
        if(len(mycursor==0)):
            print("Forgot Password? or sign up again")
            break

        else:
            userfound=True
            for row in mycursor:
                customer=mycursor[2]
    elif(inuu==3):
        mycursor.execute('select category_NAME form productcategory')   
        for row in mycursor:
            print(row)
    
    elif(inuu==4):
        inputthecategory=input("Input the category name which you want to look into")
        mycursor.execute("select productname, price, availability from product,productcategory where product.category_ID==category.category_ID AND category.category_NAME==inputthecategory")
        for row in mycursor:
            print(row)
            print("Do you want to add this to your cart Press Y/N")
            take=input()
            if(take== "Y"):
                if(userfound):
                    print("enter the quantity")
                    inp= int(input())
                else:
                    print('please login first')
    elif(inuu==5):
        if(userfound):
            mycursor.execute('select product_ID,product_quantity from cart where cart.idcart== customer')
            for row in mycursor:
                print (row)

    elif(inuu==6):
        if(userfound):
            today = date.today()
            d1 = today.strftime("%d/%m/%Y")

            mycursor.execute("select product.product_ID,product.price,cart.product_quantity from cart,product where cart.idcart==customer && cart.product_ID == product.product_ID  && product.availability>0")
            total=0
            for row in mycursor:
                total+=row[1]*row[2]

            mycursor.execute("Update from cart,product where cart.idcart==customer && cart.product_ID == product.product_ID  ")    
            mycursor.execute("insert into bazar.order (order_ID, order_date, order_position, order_cost, CustomerID) values (orderids, d1, '17268 Derek Parkway',total , customer);")
    elif(inuu==7):
        break

        
    