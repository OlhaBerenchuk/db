from cassandra.cluster import Cluster

cluster = Cluster()
connection = cluster.connect('db')

batch = """
BEGIN BATCH
UPDATE db.generating_test_for_the_code 
SET description = [['No no no no no no', 'No']]
WHERE user_id = 34 AND test_case_id = 29 AND topic_test_id= 66 AND function_id = 16;
DELETE result FROM db.generating_test_for_the_code
WHERE user_id = 34 AND test_case_id = 29 AND topic_test_id= 66 AND function_id = 16;
APPLY BATCH;
"""
connection.execute(batch)