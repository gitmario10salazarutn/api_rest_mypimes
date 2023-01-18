from flask import  Blueprint, jsonify, request
from src.models.Model import Model as model

main = Blueprint('app_blueprint', __name__)

@main.route('/get')
def get():
    return "Hola"


# GET ALL
@main.route('/get_clientes', methods =['GET'])
def get_clientes():
    try:
        clientes = model.get_clientes()
        if clientes is None:
            return jsonify({'message': 'Data not found!'}), 404
        else:
            return clientes[0]
    except Exception as ex:
        return jsonify({'message': 'Error {0}'.format(ex)}), 500
