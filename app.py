
from flask import Flask, render_template
from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, IntegerField, BooleanField
from wtforms.validators import DataRequired
from flask_mail import Mail, Message
import sqlite3



#secret key za formu
app = Flask(__name__)
app.config['SECRET_KEY'] = "blabla"

#forma na lokaciji obrazac.html
class OPGForm(FlaskForm):
    opg = StringField("Ime OPG-a", validators=[DataRequired()])
    ime = StringField("Ime i prezime vlasnika", validators=[DataRequired()])
    oib = IntegerField("OIB", validators=[DataRequired()])
    kontakt = IntegerField("Kontakt broj", validators=[DataRequired()])
    accept_tos = BooleanField("Sve su tvrdnje točne i u skladu sa pravilnikom Zadarskih Polja.", validators=[DataRequired()])
    submit = SubmitField("Pošalji")


#konfiguracija flask maila
app.config['MAIL_SERVER'] = 'smtp.gmail.com'
app.config['MAIL_PORT'] = 587
app.config['MAIL_USE_TLS'] = True
app.config['MAIL_USE_SSL'] = False
app.config['MAIL_USERNAME'] = 'zadarskapolja@gmail.com'
app.config['MAIL_PASSWORD'] = 'P@ssv0rd.'
mail = Mail(app)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/faq')
def faq():
    return render_template('faq.html')

@app.route('/blog')
def blog():
    return render_template('blog.html')

@app.route('/kontakt')
def kontakt():
    return render_template('kontakt.html')

@app.route('/linkovi')
def linkovi():
    return render_template('linkovi.html')

@app.route('/obrazac', methods=['GET', 'POST'])
def obrazac():
    form = OPGForm()
    if form.validate_on_submit():
        return render_template('uspjeh.html')
    return render_template('obrazac.html',
    form = form)



@app.route('/opgovi')
def opgovi():
    return render_template('opgovi.html')


#metoda za flask mail
@app.route("/poslano")
def send():
     msg = Message('Alo?', sender='zadarskapolja@gmail.com', recipients=['marija.nikolic.cro@gmail.com', 'marija.pavlovic19@gmail.com'])
     msg.body = "Da je baba muško, zvala bi se Duško!"
     mail.send(msg)
     return 'Poslano'

#KONEKCIJA I ISPIS BAZE
#PROBLEM PROBLEM PROBLEM PROBLEM PROBLEM PROBLEM PROBLEM PROBLEM PROBLEM

sql_files = [
    './create.sql',
    './insert opg.sql',
    './select_opg.sql'
]

conn = sqlite3.connect('./opg_baza.db')

c = conn.cursor()

for path in sql_files:
    with open(path, encoding='utf-8') as file:
        query = file.read()
    c.execute(query)

def readSqliteTable():
    try:
        sqliteConnection = sqlite3.connect('./opg_baza.db')
        cursor = sqliteConnection.cursor()
        print("Connected to SQLite")

        sqlite_select_query = """SELECT * from opg"""
        cursor.execute(sqlite_select_query)
        records = cursor.fetchall()
        print("Total rows are:  ", len(records))
        print("Printing each row")
        for row in records:
            print("Id: ", row[0])
            print("Name: ", row[1])
            print("Email: ", row[2])
            print("JoiningDate: ", row[3])
            print("Salary: ", row[4])
            print("\n")

        cursor.close()
    except sqlite3.Error as error:
        print("Failed to read data from sqlite table", error)
    finally:
        if sqliteConnection:
            sqliteConnection.close()
            print("The SQLite connection is closed")

readSqliteTable()

conn.commit()
conn.close()

#KRAJ PROBLEMA


if __name__ == '__main__':
    app.run(debug=True)