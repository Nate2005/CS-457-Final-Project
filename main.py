from sqlalchemy import create_engine

user = 'postgres'
password = 'Nate314'
host = 'localhost'
port = 5432
database = 'postgres'

engine = create_engine(url="postgresql://{0}:{1}@{2}:{3}/{4}".format(user, password, host, port, database ))