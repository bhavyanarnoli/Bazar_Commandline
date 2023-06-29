from flask import Flask, render_template, request, flash , url_for , redirect ,session
from flask_mysqldb import MySQL
# from flask import date
from datetime import date
import datetime 
app = Flask(__name__)
import time
import threading
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'bhavya'
app.config['MYSQL_DB'] = 'bazar3'

mysql = MySQL(app)

userfound = False

app.secret_key = 'bhavya'


app.secret_key = 'your_secret_key'

@app.route('/')
def index():
    print("here")
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM admin")
    fetchdata = cur.fetchall()
    cur.close()
    cur = mysql.connection.cursor()
    cur.execute("SELECT category_ID, category_NAME FROM productcategory")
    categories = cur.fetchall()
    cur.close()

    if request.method == 'POST':
        inputthecategory = request.form['category']
        cur = mysql.connection.cursor()
        cur.execute("SELECT product_id, price, availabilty FROM product, productcategory WHERE product.category_ID = productcategory.category_ID AND productcategory.category_NAME = %s", (inputthecategory,))
        products = cur.fetchall()
        cur.close()
        return render_template('index.html', categories=categories, products=products)

    return render_template('index.html', categories=categories)

    
@app.route('/signup', methods=['GET', 'POST'])
def signup():
    if request.method == 'POST':
        firstnme = request.form['firstname']
        lastnme = request.form['lastname']
        phoneno = request.form['phoneno']
        email = request.form['email']
        address = request.form['address']
        password = request.form['password']
        username = request.form['username']

        cur = mysql.connection.cursor()
        cur.execute('SELECT MAX(Customer_ID) FROM Customer')
        result = cur.fetchone()
        max_customer_id = result[0]

        customerid = max_customer_id + 1 if max_customer_id else 1

        cur.execute('INSERT INTO Customer (Customer_ID, firstname, lastname, Phone_No, email_ID, Address) VALUES (%s, %s, %s, %s, %s, %s)', (customerid, firstnme, lastnme, phoneno, email, address))

        print('Inserted 1 row')

        mysql.connection.commit()
        cur.execute('INSERT INTO credentials(username, password, cust_ID) VALUES(%s, %s, %s)', (username, password, customerid))
        mysql.connection.commit()
        cur.close()

        return render_template('login.html', message='You have successfully signed up!')

    return render_template('signup.html')


from flask import redirect, url_for

@app.route('/login', methods=['GET', 'POST'])
def login():
    global userfound
    global customer
    if request.method == 'POST':
        password = request.form['password']
        username = request.form['username']
        cur = mysql.connection.cursor()
        cur.execute('SELECT * FROM credentials WHERE username = %s AND password = %s', (username, password))
        user = cur.fetchone()
        print(user)
        print('--------------------------------------------------------------------')
        if user:
            userfound = True
            customer = user[2]
            print(customer)
            return redirect(url_for('categories'))  #Redrect to the categories route
        else:
            return render_template('login.html', message= 'invalid data entered')

        cur.close()

    return render_template('login.html')



@app.route('/categories', methods=['GET', 'POST'])
def categories():
    cur = mysql.connection.cursor()
    cur.execute("SELECT category_ID, category_NAME FROM productcategory")
    categories = cur.fetchall()
    cur.close()

    if request.method == 'POST':
        inputthecategory = request.form['category']
        cur = mysql.connection.cursor()
        cur.execute("SELECT product_id, price, availabilty FROM product, productcategory WHERE product.category_ID = productcategory.category_ID AND productcategory.category_NAME = %s", (inputthecategory,))
        products = cur.fetchall()
        cur.close()
        return render_template('categories.html', categories=categories, products=products)

    return render_template('categories.html', categories=categories)

@app.route('/add_to_cart', methods=['POST'])
def add_to_cart():
    global userfound
    if userfound:
        product_id = request.form['product_id']
        quantity = request.form['quantity']

        # Perorm any necessary validations on the product_id and quantity

        cur = mysql.connection.cursor()
        print(customer)
        print(product_id)
        print(quantity)
        cur.execute("INSERT INTO cart (idcart, product_id, product_quantity) VALUES (%s, %s, %s)", (customer, product_id, quantity))
        mysql.connection.commit()
        cur.close()
        print('added')
        flash('Product added to cart successfully!')
    else:
        print('hre')
        flash('Please log in first.')

    cur = mysql.connection.cursor()
    cur.execute("SELECT category_ID, category_NAME FROM productcategory")
    categories = cur.fetchall()
    cur.close()

    return render_template('categories.html', categories=categories)

@app.route('/orders')
def orders():
    if userfound:
        cur = mysql.connection.cursor()
        cur.execute("SELECT * FROM bazar3.order WHERE cart_link = %s", (customer,))

        orders = cur.fetchall()
        cur.close()

        return render_template('order.html', orders=orders)
    else:

        return render_template('login.html', message = 'please login to see your orders')
    
@app.route('/cart', methods=['GET', 'POST'])
def cart():
    if userfound:
        cur = mysql.connection.cursor()
        cur.execute("SELECT product.product_ID, product.price, cart.product_quantity FROM cart INNER JOIN product ON cart.product_ID = product.product_ID WHERE cart.idcart = %s ", (customer,))

        cart_items = cur.fetchall()
        cur.close()

        total_amount = 0
        for item in cart_items:
            total_amount += item[1] * item[2] # prie * quantity

        if request.method == 'POST':
            # Plae the order
            today = date.today()
            d1 = today.strftime("%Y-%m-%d")
            
            cur = mysql.connection.cursor()
            cur.execute("SELECT MAX(order_ID) FROM bazar3.order")
            result = cur.fetchone()
            max_order_id = result[0]
            order_id = max_order_id + 1 if max_order_id else 1

            cur.execute("SELECT MAX(order_ID) FROM bazar3.order")
            res = cur.fetchone()
            max_payment_id = res[0]
            pay_id = max_payment_id + 1 if max_payment_id else 1
            
            cur.execute("SELECT MAX(order_ID) FROM bazar3.order")
            res = cur.fetchone()
            max_payment_id = res[0]
            pay_id = max_payment_id + 1 if max_payment_id else 1
            
            cur.execute("SELECT MAX(order_ID) FROM bazar3.delivery_person")
            res = cur.fetchone()
            max_delivery_id = res[0]
            del_id = max_delivery_id + 1 if max_delivery_id else 1
            
            del_name = "imasomedeliveryperos"
            del_phone = 9230230089
            
            lock = threading.Lock()

            # Acquire the lock
            lock.acquire()

            try:
                cur.execute("INSERT INTO bazar3.order (order_ID, order_date, order_position, order_cost, CustomerID) VALUES (%s, %s, 'shipped', %s, %s)", (order_id, d1, total_amount, customer))
                mysql.connection.commit()
                print(order_id)

                # Release the lock
                lock.release()

                # Perform the payment and delivery inserts
                cur.execute("INSERT INTO bazar3.payment (paymentID , paymentdate , Payment_amount, order_id, user_ID) VALUES (%s, %s, %s, %s, %s)", (pay_id, d1, total_amount, order_id, customer))
                mysql.connection.commit()

                cur.execute("INSERT INTO bazar3.delivery_person (id, name, phone, order_id) VALUES (%s, %s, %s, %s)", (del_id, del_name, del_phone, order_id))
                mysql.connection.commit()

            finally:
                # Make sure to release the lock even if an exception occurs
                lock.release()
            cur.execute("INSERT INTO bazar3.delivery_person ( id , name , phone, order_id) VALUES (%s, %s, %s, %s)", (del_id, del_name, del_phone, order_id) )
            mysql.connection.commit()
            
            cur.execute("DELETE FROM cart WHERE idcart = %s", (customer,))
            mysql.connection.commit()

            cur.close()

            flash('Order placed successfully!')
            return redirect(url_for('cart'))

        return render_template('cart.html', cart_items=cart_items, total_amount=total_amount)
    else:
        return render_template('login.html', message = 'please login to see your cart')



from flask import request
import datetime
@app.route('/place_order', methods=['POST'])
def place_order():
    if userfound:
        tday = datetime.date.today()

        cur = mysql.connection.cursor()
        cur.execute(
            "SELECT product.product_ID, product.price, cart.product_quantity "
            "FROM cart "
            "INNER JOIN product ON cart.product_ID = product.product_ID "
            "WHERE cart.idcart = %s",
            (customer,),
        )

        cart_items = cur.fetchall()

        total_cost = sum(item[1] * item[2] for item in cart_items)  #Calulate total cost

        return render_template('confirm_order.html', total_cost=total_cost)

    flash('Please log in first.')
    return redirect(url_for('login'))

@app.route('/place_order_confirm', methods=['POST'])
def place_order_confirm():
    total_cost = request.form.get('total_cost')
    confirmation = request.form.get('confirmation')
    cur = mysql.connection.cursor()
    d1 = datetime.date.today()
    lock = threading.Lock()
    lock.acquire()
    
        # Begin the transaction
    cur.execute("START TRANSACTION")
    cur.execute("SELECT MAX(order_id) FROM `order`")
    max_order_id = cur.fetchone()[0]
    order_id = max_order_id + 1

            # Insert the order record
    cur.execute(
        "INSERT INTO bazar3.order (order_ID, order_date, order_position, order_cost, cart_link) "
        "VALUES (%s, %s, 'shipped', %s, %s)",
        (order_id, d1, total_cost, customer)
    )

            # Commit the order
    mysql.connection.commit()
    print("Order committed")
    lock.release() 
    # Get the order ID
    
            
    cur.execute("SELECT MAX(paymentID) FROM `payment`")
    max_pay_id = cur.fetchone()[0]
    pay_id = max_pay_id + 1 
    print(pay_id)
    print(d1)
    print(total_cost)
    print(order_id)
    print(customer)    
    # Insert the payment record
    cur.execute(
        "INSERT INTO bazar3.payment (paymentID, paymentdate, Payment_amount, order_id, user_ID) "
        "VALUES (%s, %s, %s, %s, %s)",
        (pay_id, d1, total_cost, order_id, customer)
    )
    mysql.connection.commit()

    # Insert the delivery record
    cur.execute("SELECT MAX(id) FROM `delivery_person`")
    # cur.execute("SELECT COALESCE(MAX(id), 0) FROM bazar3.delivery_person LIMIT 1")
    max_del_id = cur.fetchone()[0]
    del_id = max_del_id + 1
    del_name = "Delivery"
    del_phone = "9393933939"
    cur.execute(
                "INSERT INTO bazar3.delivery_person (id, name, phone, orderid) "
                "VALUES (%s, %s, %s, %s)",
                (del_id, del_name, del_phone, order_id)
            )

            # Commit the payment and delivery
    mysql.connection.commit()
    print("Payment and delivery committed")
    return redirect(url_for('order_confirmation', order_id=order_id))




@app.route('/order_confirmation/<order_id>')
def order_confirmation(order_id):
    # Fetch order details from the database based on the order_id
    # You can use the order_id to retrieve relevant information and display it on the confirmation page
    # For example:
    # cur.execute("SELECT * FROM bazar3.order WHERE order_ID = %s", (order_id,))
    # order = cur.fetchone()

    # Render the order confirmation template
    return render_template('order_done.html', order_id=order_id)


@app.route('/orders')
def view_orders():
    cur = mysql.connection.cursor()
    try:
        # Create a cursor to execute SQL queries
        if userfound:
            # Retrieve orders from the database for a specific customer (cart_link)
             # Replace with the actual cart_link value representing the customer
            sql = "SELECT * FROM `order` WHERE `cart_link` = %s"
            cur.execute(sql, (customer,))
            orders = cur.fetchall()

        return render_template('order.html', orders=orders)
    finally:
        # Close the database connection
        cur.close()

@app.route('/contact/<name>')
def contact(name):
    return f"Hello, this is the Contact Page, Mr. {name}"

@app.route('/register')
def register():
    return "Hello, this is the Registration Page"

if __name__ == "__main__":
    app.run(debug=True)
