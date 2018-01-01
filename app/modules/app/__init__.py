# Import flask and template operators
from flask import Flask

# Define the WSGI application object
app = Flask(__name__, template_folder="/var/app/templates/app")

# Configurations
app.config.from_object('config_app')

# Importing the controllers
from app.demo import *
