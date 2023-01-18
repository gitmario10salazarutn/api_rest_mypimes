from src.database import connectdb as conn
from .entities import Entities as entities
import json

connection = conn.get_connection()

class Model:


    @classmethod
    def get_clientes(self):
        try:
            connection = conn.get_connection()
            cursor = connection.cursor()
            cursor.execute("declare @clientes nvarchar(max) set @clientes = ( select p.id_cliente, p.cli_nombres, p.cli_apellidos, p.cli_telefono, p.cli_direccion, p.cli_fecha_registro, p.cli_email from cliente p for json auto ) select @clientes as clientes return")
            result = cursor.fetchone()
            connection.close()
            return result
        except Exception as ex:
            raise Exception(ex)