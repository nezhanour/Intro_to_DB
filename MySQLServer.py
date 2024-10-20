import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="NMAbtsZO99@Nc",
)

mycursor = mydb.cursor()

try:
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")
except mysql.connector.Error as err:
    print("Failed creating database: {}".format(err))
    exit(1)


mycursor.close()
mydb.close()