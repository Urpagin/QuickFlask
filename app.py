from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def root():
    python_msg = 'QuickFlask'
    return render_template('index.html', message=python_msg)

if __name__ == '__main__':
	app.run(host='0.0.0.0', port=8000)
