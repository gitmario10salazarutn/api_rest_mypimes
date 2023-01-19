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
from models.Model import Model as model

app = Flask(__name__)

def Page_Not_Found(error):
    return '<h1>Page Not Found</h1>', 404

@app.route('/')
def index():
    return '<h1>Hi, I am Mario and Who are you?</h1>'

@app.route('/get')
def get():
    return '<h1>Hi, I am Mario and Who are you? I amm get</h1>'

# GET ALL
@app.route('/get_clientes', methods =['GET'])
def get_clientes():
    try:
        clientes = model.get_clientes()
        if clientes is None:
            return jsonify({'message': 'Data not found!'}), 404
        else:
            return clientes[0]
    except Exception as ex:
        return jsonify({'message': 'Error {0}'.format(ex)}), 500



if __name__ == '__main__':
    app.config.from_object(config['development'])
    # Blueprints
    app.register_blueprint(routes.main, url_prefix = '/')
    # Error
    app.register_error_handler(404, Page_Not_Found)
    app.run()
