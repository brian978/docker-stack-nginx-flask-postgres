# Configure import path
import sys

sys.path.append('/var/app/config')
sys.path.append('/var/app/modules')
sys.path.append('/var/app/templates')

# Run a test server.
from app import app

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=True)
