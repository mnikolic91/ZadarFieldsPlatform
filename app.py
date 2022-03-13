from random import random
from flask import Flask, render_template, request, redirect, url_for
from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, IntegerField, BooleanField
from wtforms.validators import DataRequired, Email
from flask_mail import Mail, Message
import email_validator
import os
from flask import Flask, request, jsonify, json
import firebase_admin
from firebase_admin import credentials, firestore, initialize_app



#secret key za formu
app = Flask(__name__)
app.config['SECRET_KEY'] = "blabla"

#firebase config
cred = credentials.Certificate('key.json')
default_app = initialize_app(cred)
db = firestore.client()
todo_ref = db.collection('opg')




#konfiguracija flask maila
app.config['MAIL_SERVER'] = 'smtp.gmail.com'
app.config['MAIL_PORT'] = 587
app.config['MAIL_USE_TLS'] = True
app.config['MAIL_USE_SSL'] = False
app.config['MAIL_USERNAME'] = 'zadarskapolja@gmail.com'
app.config['MAIL_PASSWORD'] = 'P@ssv0rd.'
mail = Mail(app)


#forma na lokaciji obrazac.html
class OPGForm(FlaskForm):
    opg = StringField("Ime OPG-a", validators=[DataRequired()])
    ime = StringField("Ime i prezime vlasnika", validators=[DataRequired()])
    oib = IntegerField("OIB", validators=[DataRequired()])
    kontakt = IntegerField("Kontakt broj", validators=[DataRequired()])
    accept_tos = BooleanField("Sve su tvrdnje točne i u skladu sa pravilnikom Zadarskih Polja.", validators=[DataRequired()])
    submit = SubmitField("Pošalji")


opg_list=[]

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

@app.route('/newsletter')
def newsletter():
    return render_template('newsletter.html')

@app.route('/uspjeh')
def uspjeh():
    return render_template('uspjeh.html')

@app.route('/opgovi')
def opgovi():
    return render_template('opgovi.html')


#OBRAZAC KOJI UPISUJE UNESENE PODATKE IZRAVNO U FIRESTORE BAZU PODATAKA POD IMENOM VLASNIKA OPG-A

@app.route('/obrazac', methods=['GET', 'POST'])
def obrazac():
    form = OPGForm()
    if form.validate_on_submit():
        data = {
        u'ime_opg': form.opg.data,
        u'ime_vlasnika': form.ime.data,
        u'oib': form.oib.data,
        u'kontakt': form.kontakt.data
        }
        db.collection(u'opg').document(form.ime.data).set(data)
        return render_template('uspjeh.html')
    return render_template('obrazac.html',
    form = form)


#DOBAVLJAJMO PODATKE IZ FIRESTORE BAZE

@app.route('/ispis', methods=['GET'])
def ispis():
    """
        read() : Fetches documents from Firestore collection as JSON.
        todo : Return document that matches query ID.
        all_todos : Return all documents.
    """
    try:
        # Check if ID was passed to URL query
        todo_id = request.args.get('ime_vlasnika')
        if todo_id:
            todo = todo_ref.document(todo_id).get()
            data = jsonify(todo.to_dict(), 200)
            return data 
        else:
            all_todos = [doc.to_dict() for doc in todo_ref.stream()]
            data2 = jsonify(all_todos), 200
            return data2

    except Exception as e:
        return f"An Error Occured: {e}"

#FORMA ZA SKUPLJANJE MAILA ZA NEWSLETTER
@app.route('/newsletter', methods = ['POST', 'GET'])
def signup():
    email = request.form['email']
    msg = Message('Zadarska polja', sender='zadarskapolja@gmail.com', recipients=[email])
    msg.body = "Uspješno ste se prijavili na naš newsletter!"
    mail.send(msg)
    return render_template('newsletter.html')






if __name__ == '__main__':
    app.run(debug=True)