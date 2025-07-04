import mysql.connector
from mysql.connector import Error

def create_database():


    # Connecting to DB
    try:
        mydb = mysql.connector.connect(
            host="localhost",
            user="root",
            password="Houssainy1995!",
            database="alx_book_store"
        )

        mycursor = mydb.cursor()
        mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

        print("Database 'alx_book_store' created successfully!")
    except Error as e:
        print("❌ Error connecting to MySQL:", e)
    finally:
        # close connection with DB
        mycursor.close()
        mydb.close()
        print("DB was closed")

if __name__ == "__main__":
    create_database()

