
from flask import Flask, render_template
from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, IntegerField, BooleanField
from wtforms.validators import DataRequired

app = Flask(__name__)
app.config['SECRET_KEY'] = "blabla"


class OPGForm(FlaskForm):
    opg = StringField("Ime OPG-a", validators=[DataRequired()])
    ime = StringField("Ime i prezime vlasnika", validators=[DataRequired()])
    oib = IntegerField("OIB", validators=[DataRequired()])
    kontakt = IntegerField("Kontakt broj", validators=[DataRequired()])
    accept_tos = BooleanField("Sve su tvrdnje točne i u skladu sa pravilnikom ZdPolja.", validators=[DataRequired()])
    submit = SubmitField("Submit")

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





if __name__ == '__main__':
    app.run(debug=True)