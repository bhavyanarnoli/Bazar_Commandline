from flask import Flask, render_template, request, flash , url_for , redirect ,session
from flask_mysqldb import MySQL
# from flask import date
from datetime import date

app = Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'bhavya'
app.config['MYSQL_DB'] = 'bazar'

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
        cur.execute('INSERT INTO credentials(username, password, customerID) VALUES(%s, %s, %s)', (username, password, customerid))
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
        cur.execute("SELECT * FROM bazar.orders WHERE cart_link = %s", (customer,))

        orders = cur.fetchall()
        cur.close()

        return render_template('orders.html', orders=orders)
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
            cur.execute("SELECT MAX(order_ID) FROM bazar.order")
            result = cur.fetchone()
            max_order_id = result[0]
            order_id = max_order_id + 1 if max_order_id else 1

            cur.execute("INSERT INTO bazar.order (order_ID, order_date, order_position, order_cost, CustomerID) VALUES (%s, %s, 'shipped', %s, %s)", (order_id, d1, total_amount, customer))
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
    tday = datetime.date.today()
    
    if confirmation == 'yes':
        position = 'shipped'
        
        cur.execute("SELECT COALESCE(MAX(order_ID), 0) FROM bazar.order")
        max_order_id = cur.fetchone()[0]
        order_id = max_order_id + 1
        
        cur.execute("SELECT COALESCE(MAX(paymentID), 0) FROM bazar.payment")
        max_pay_id = cur.fetchone()[0]
        pay_id = max_pay_id + 1
        
        cur.execute("SELECT COALESCE(MAX(id), 0) FROM bazar.delivery_person")
        max_del_id = cur.fetchone()[0]
        del_id = max_del_id + 1
        print(" " ,order_id  )
        print( " ",tday )
        print(" ",pay_id )
        print(" ", del_id)
        print( " ",customer)
        cur.execute(
            "INSERT INTO bazar.order (order_ID, order_date, order_position, order_cost, cart_link) "
            "SELECT %s, %s, %s, %s, %s FROM dual WHERE NOT EXISTS (SELECT 1 FROM bazar.order)",
            (order_id, tday, position, total_cost, customer),
        )
        mysql.connection.commit()
    try:
        cur.execute(
            "INSERT INTO bazar.payment(paymentID, paymentdate, Payment_amount, order_id, user_id) "
            "VALUES (%s, %s, %s, %s, %s)",
            (pay_id, tday, total_cost, order_id, customer),
        )
        mysql.connection.commit()
    except Exception as e:
        print("Error occurred while inserting into bazar.payment:", str(e))
        
        
        name = "Delivery"
        phone = "9393933939"
    try:
        cur.execute(
            "INSERT INTO bazar.delivery_person(id, name, phone, orderid) "
            "VALUES (%s, %s, %s, %s)",
            (del_id, name, phone, order_id),
        )
        mysql.connection.commit()
    except Exception as e:
        print("Error occurred while inserting into bazar.del:", str(e))
        cur.close()

       
        flash('Order placed successfully!')
        return redirect(url_for('cart'))

    flash('Please log in first.')
    return redirect(url_for('login'))

# @ap.route('/place_order', methods=['POST'])
# defplace_order():
# if userfound:
#     tday = datetime.date.today()

#     cur = mysql.connection.cursor()
#     cur.execute(
#         "SELECT product.product_ID, product.price, cart.product_quantity "
#         "FROM cart "
#         "INNER JOIN product ON cart.product_ID = product.product_ID "
#         "WHERE cart.idcart = %s",
#         (customer,),
#     )

#     cart_items = cur.fetchall()

#     total_cost = sum(item[1] * item[2] for item in cart_items)  Calulate total cost

#    Modfy this part to use a confirmation dialog instead of input()
#     print("Total amount is:", total_cost)
#     print("Are you sure you want to place the order? (Y/N)")
#     inx = input().upper()

#     if inx == "Y":
#         position = 'shipped'

#         cur.execute("SELECT COALESCE(MAX(order_ID), 0) FROM bazar.order LIMIT 1")
#         max_order_id = cur.fetchone()[0]
#         order_id = max_order_id + 1

#         cur.execute("SELECT COALESCE(MAX(paymentID), 0) FROM bazar.payment LIMIT 1")
#         max_pay_id = cur.fetchone()[0]
#         pay_id = max_pay_id + 1

#         cur.execute("SELECT COALESCE(MAX(id), 0) FROM bazar.delivery_person LIMIT 1")
#         max_del_id = cur.fetchone()[0]
#         del_id = max_del_id + 1

#         cur.execute(
#             "INSERT INTO bazar.order (order_ID, order_date, order_position, order_cost, cart_link) "
#             "VALUES (%s, %s, %s, %s, %s)",
#             (order_id, tday, position, total_cost, customer),
#         )
#         mysql.connection.commit()

#         cur.execute(
#             "INSERT INTO bazar.payment(paymentID, paymentdate, Payment_amount, order_id, user_id) "
#             "VALUES (%s, %s, %s, %s, %s)",
#             (pay_id, tday, total_cost, order_id, customer),
#         )
#         mysql.connection.commit()
            
#         name = "DelIVERy"
#         phone = 9393933939
#         cur.execute(
#             "INSERT INTO bazar.delivery_person(id , name ,phone , orderid) "
#             "VALUES (%s, %s, %s, %s, %s)",
#             (del_id, name , phone, order_id),
#         )
#         mysql.connection.commit()
            
#         cur.close()

#         flash('Order placed successfully!')
#         return redirect(url_for('cart'))

# flash('Please log in first.')
# return redirect(url_for('login'))


# aveto complete the order, payment and delivery thing mainly.





@app.route('/contact/<name>')
def contact(name):
    return f"Hello, this is the Contact Page, Mr. {name}"

@app.route('/register')
def register():
    return "Hello, this is the Registration Page"

if __name__ == "__main__":
    app.run(debug=True)