
from flask import Flask, render_template, request, redirect, url_for
from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, IntegerField, BooleanField
from wtforms.validators import DataRequired, Email
from flask_mail import Mail, Message
import email_validator



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

@app.route('/newsletter')
def newsletter():
    return render_template('newsletter.html')

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


#FORMA ZA SKUPLJANJE MAILA ZA NEWSLETTER
@app.route('/newsletter', methods = ['POST', 'GET'])
def signup():
    email = request.form['email']
    msg = Message('Alo?', sender='zadarskapolja@gmail.com', recipients=[email])
    msg.body = "Da je baba muško, zvala bi se Duško!"
    mail.send(msg)
    return render_template('newsletter.html')
  
  



if __name__ == '__main__':
    app.run(debug=True)