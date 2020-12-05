from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, now you can see something, what is not "Hello, world!"!'

