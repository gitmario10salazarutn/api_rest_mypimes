# -*- coding: utf-8 -*-
"""
Created on Thu Nov  3 10:35:39 2022

@author: Mario
"""
from decouple import config

class Config:
    SECRET_KEY = config('SECRET_KEY')
    
class DevelopmentConfig(Config):
    DEBUG = True

config = {
    'development': DevelopmentConfig
}
