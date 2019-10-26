import mysql.connector

def init():
    mydb = mysql.connector.connect(
        host="localhost",
        user="jarvis-backend",
        passwd="password"
    )
    mycursor = mydb.cursor()
    mycursor.execute("CREATE DATABASE jarvis")
    for line in open("db.sql"):
        cursor.execute(line)

def start():
    mydb = mysql.connector.connect(
        host="localhost",
        user="jarvis-backend",
        passwd="password",
        database="jarvis"
    )
    return mydb

def test_db_integrity():
    print("WARNING: This will take a LONG time and during this test all services provided by this server will be unavalable")
    print("eg: dont run on your only avalable service")
    print(" It is also extreamly harwear intensive and may bring hardware issues previously unoticed into the light, ")
    print("ensure correct monitiring is running and configured to run kill.sh if fatal issues arise")
    input  = input("if you would still like to continue please enter Y")
    if(input != 'Y'):
        return 'declined'
    # TODO: test if **all** entrys in db are correct and intact

def export_db():
    print("WARNING: This will take a long time and produce a file which can be used to import the db into another server using import_db(file)")
    pint("during this test all services provided by this server will be unavalable")
    print(" It is also extreamly harwear intensive and may bring hardware issues previously unoticed into the light, ")
    print("ensure correct monitiring is running and configured to run kill.sh if fatal issues arise")
    input  = input("if you would still like to continue please enter Y")
    if(input != 'Y'):
        return 'declined'
    # TODO: export entire db to a file 
    # TODO: define correct format for the file

def import_db(file):
    input  = input("Are you sure that entered file path:"+file"is correct and you would like to proceed? (Y/N)")
    if(input != 'Y'):
        return 'declined'
    # TODO: import db from a file created by export_db()
    # TODO: define correct format for the file

