from flask import Flask, render_template, request, session, redirect
import json
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
from flask_mail import Mail
from random import randrange
import math
import os

app = Flask(__name__)
app.secret_key = "suspices"

with open('config.json', 'r') as c:
    params = json.load(c)["params"]

app.config.update(
    MAIL_SERVER='smtp.gmail.com',
    MAIL_PORT='465',
    MAIL_USE_SSL=True,
    MAIL_USERNAME=params['user_gmail'],
    MAIL_PASSWORD=params['user_gmail_pass']
)

mail = Mail(app)

app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@localhost/websitegiverofficial'
db = SQLAlchemy(app)


# sno	name	email	number	cuncern	date
class Contact(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(50), nullable=False)
    email = db.Column(db.String(50), nullable=False)
    number = db.Column(db.String(15), nullable=False)
    concern = db.Column(db.String(500), nullable=False)
    date = db.Column(db.String(12), nullable=True)


# sno webname link about readmin datetime
class Weblinks(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    typeof = db.Column(db.Integer, primary_key=True)
    webname = db.Column(db.String(50), nullable=False)
    link = db.Column(db.String(110), nullable=False)
    about = db.Column(db.String(99999), nullable=False)
    readmin = db.Column(db.String(11), nullable=False)
    datetime = db.Column(db.String(12), nullable=True)


@app.route('/', methods=["GET", "POST"])
def home():
    if('user' in session and session['user'] == params['admin_Username']):
        if(request.method == "POST"):

            webname = request.form.get('webname')
            webUrl = request.form.get('webUrl')
            typeof = request.form.get('type')
            description = request.form.get('description')
            random = randrange(5, 25)

            entry = Weblinks(typeof=typeof, webname=webname, link=webUrl,
                             about=description, readmin=random, datetime=datetime.now())
            db.session.add(entry)
            db.session.commit()

    post = Weblinks.query.filter_by().all()
    return render_template('index.html', params=params, post=post)


@app.route('/games')
def games():
    return render_template('games.html', params=params)


@app.route('/search', methods=["GET", "POST"])
def search():
    if request.method == 'GET':
        searchres = request.form.get('serach')
        search = Weblinks.query.filter_by(webname=searchres)
        return render_template('search.html', params=params, post=search)

    post = Weblinks.query.filter_by().all()
    return render_template('search.html', params=params, post=post)


@app.route('/dashbord', methods=["GET", "POST"])
def dashbord():
    if ('user' in session and session['user'] == params['admin_Username']):
        return render_template('dashbord.html', params=params)

    if request.method == "POST":
        username = request.form.get('username')
        userpass = request.form.get('userpass')

        if (username == params['admin_Username'] and userpass == params['admin_password']):
            session['user'] = username
            return render_template('dashbord.html', params=params)
    else:
        return render_template('login.html', params=params)
    return render_template('login.html', params=params)


@app.route('/logout', methods=['GET', 'POST'])
def logout():
    session.pop('user')
    return redirect('/dashbord')


@app.route('/contact', methods=['GET', 'POST'])
def contact():
    if (request.method == 'POST'):
        # sno name email number cuncern date
        # name email phone message

        name = request.form.get('name')
        email = request.form.get('email')
        phone = request.form.get('phone')
        message = request.form.get('msg')

        entry = Contact(name=name, email=email, number=phone,
                        concern=message, date=datetime.now())
        db.session.add(entry)
        db.session.commit()

        mail.send_message('New Message From Website by '+name,
                          sender=email,
                          recipients=[params['user_gmail']],
                          body='email = '+email + "\n" + 'message = ' +
                          message + "\n" + 'phone Number = '+phone
                          )
    return render_template('contact.html', params=contact, data=params)


@app.route('/manage', methods=['GET', 'POST'])
def ManageSystem():
    if ('user' in session and session['user'] == params['admin_Username']):
        post = Weblinks.query.filter_by().all()
        return render_template('manage.html', post=post, params=params)
    return redirect('/dashbord')


@app.route('/delet/<string:sno>', methods=['GET', 'POST'])
def delet(sno):
    if ('user' in session and session['user'] == params['admin_Username']):
        post = Weblinks.query.filter_by(sno=sno).first()
        db.session.delete(post)
        db.session.commit()
    return redirect('/manage')


@app.route('/edit/<string:sno>', methods=['GET', 'POST'])
def edit(sno):
    if ('user' in session and session['user'] == params['admin_Username']):
        date = datetime.now()
        if request.method == 'POST':
            # typeof=typeof, webname=webname, link=webUrl, about=description, readmin=random, datetime=datetime.now()
            webname = request.form.get('webname')
            webUrl = request.form.get('webUrl')
            typeof = request.form.get('typeof')
            ctime = request.form.get('ctime')
            rtime = request.form.get('rtime')
            description = request.form.get('description')

            # Add new data To database
            post = Weblinks.query.filter_by(sno=sno).first()
            post.typeof = typeof
            post.webname = webname
            post.link = webUrl
            post.about = description
            post.readmin = rtime
            post.datetime = date

            print(typeof)

            # Commit The Data
            db.session.commit()
            return redirect('/manage')

        post = Weblinks.query.filter_by(sno=sno).first()
        return render_template('edit.html', post=post, params=params)
    return redirect('/dashbord')


app.run(debug=True)
