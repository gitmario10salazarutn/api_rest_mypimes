
import math
from fractions import Fraction
import json


"""
create table cliente(
	id_cliente character varying(13) NOT NULL,
    cli_nombres character varying(50) NOT NULL,
	cli_apellidos character varying(50) NOT NULL,
    cli_telefono character varying(15) NOT NULL,
    cli_email character varying(60) NOT NULL,
    cli_direccion character varying(100) NOT NULL,
    cli_fecha_registro date NOT NULL,
	constraint pk_cliente PRIMARY KEY(id_cliente)
);
"""
#01
class Cliente:

    def __init__(self, id_cliente, cli_nombres, cli_apellidos, cli_telefono, cli_email, cli_direccion, cli_fecha_registro):
        self.id_cliente = id_cliente
        self.cli_nombres = cli_nombres
        self.cli_apellidos = cli_apellidos
        self.cli_telefono = cli_telefono
        self.cli_email = cli_email
        self.cli_direccion = cli_direccion
        self.cli_fecha_registro = cli_fecha_registro


    def Show_Cliente(self):
        return "Card ID: {0}\n First Name: {1}\n Last Name: {2}\n Phone: {3}\n Email: {4}\n Addres: {5}\n Date Register: {6}".format(self.id_cliente, self.cli_nombres, self.cli_apellidos, self.cli_telefono, self.cli_email, self.cli_direccion, self.cli_fecha_registro)

    def convert_object_list(self, list):
        try:
            data = json.loads(list)[0]
            p = Cliente(data['id_cliente'], data['cli_nombres'], data['cli_apellidos'], data['cli_telefono'], data['cli_email'], data['cli_direccion'], data['cli_fecha_registro'])
            return p
        except Exception as ex:
            raise Exception(ex)

    def convert_object_json(self, data):
        try:
            p = Cliente(data['id_cliente'], data['cli_nombres'], data['cli_apellidos'], data['cli_telefono'], data['cli_email'], data['cli_direccion'], data['cli_fecha_registro'])
            return p
        except Exception as ex:
            raise Exception(ex)

    def convert_object_json_data(self, data):
        try:
            p = Cliente(data['id_cliente'], data['cli_nombres'], data['cli_apellidos'], data['cli_telefono'], data['cli_email'], data['cli_direccion'], data['cli_fecha_registro'])
            return p
        except Exception as ex:
            raise Exception(ex)

    def convert_to_json(self):
        return {
            "id_cliente": self.id_cliente,
            "cli_nombres": self.cli_nombres,
            "cli_apellidos": self.cli_apellidos,
            "cli_telefono": self.cli_telefono,
            "cli_email": self.cli_email,
            "cli_direccion": self.cli_direccion,
            "cli_fecha_registro": self.cli_fecha_registro
        }

c = Cliente("1003938477", "Mario", "Salazar", "0979432426", "masalazara@utn.edu.ec", "El Tejar - Ibarra", "01/18/2023")
print(c.convert_to_json())