from cassandra.cluster import Cluster
from cassandra import ConsistencyLevel
from cassandra.query import SimpleStatement

cluster = Cluster()
connection = cluster.connect()

def func():
    for file in ['drop.cql', 'create.cql', 'work.cql']:
        print(file)
        with open(file, mode='r') as f:
            for row in f.read().split(';'):
                row = row.strip()
                if row != '':
                    print(row)
                    if file == 'drop.cql':
                        query = SimpleStatement(row, consistency_level=ConsistencyLevel.QUORUM)
                    elif file == 'create.cql':
                        query = SimpleStatement(row, consistency_level=ConsistencyLevel.ALL)
                    else:
                        query = SimpleStatement(row, consistency_level=ConsistencyLevel.ONE)
                    connection.execute(query)

func()