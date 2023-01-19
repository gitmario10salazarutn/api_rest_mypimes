# -*- coding: utf-8 -*-
"""
Created on Thu Nov  3 10:13:43 2022

@author: Mario
"""

from unittest import result
from flask import Flask, jsonify,request
import database.connectdb as conn
from config import config
from routes import routes

app = Flask(__name__)

def Page_Not_Found(error):
    return '<h1>Page Not Found</h1>', 404

@app.route('/')
def index():
    return '<h1>Hi, I am Mario and Who are you?</h1>'

if __name__ == '__main__':
    app.config.from_object(config['development'])
    # Blueprints
    app.register_blueprint(routes.main, url_prefix = '/')
    # Error
    app.register_error_handler(404, Page_Not_Found)
    app.run()
