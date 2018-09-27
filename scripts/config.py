import os

print('--------- Local configuration loaded')
DEFAULT_SERVER = '0.0.0.0'
DATA_DIR = '/home/vagrant/pgAdmin4/pgadmin_data'

LOG_FILE = os.path.join(DATA_DIR, 'pgadmin4.log')
SQLITE_PATH = os.path.join(DATA_DIR, 'pgadmin4.db')
SESSION_DB_PATH = os.path.join(DATA_DIR, 'sessions')
STORAGE_DIR = os.path.join(DATA_DIR, 'storage')
TEST_SQLITE_PATH = os.path.join(DATA_DIR, 'test_pgadmin4.db')