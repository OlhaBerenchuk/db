CREATE KEYSPACE IF NOT EXISTS db
  WITH REPLICATION = {
	'class': 'SimpleStrategy',
	'replication_factor' : 3
};

CREATE TYPE IF NOT EXISTS db.user_name_type(
	firstname text,
	lastname text
);


CREATE TABLE IF NOT EXISTS db.generating_test_for_the_code (
	user_id int,
	user_email text STATIC,
	user_name frozen<db.user_name_type>,
	user_password text,
	
	topic_test_id int,
	topic_test_name text,
	
	test_case_id int,
	description LIST<frozen<LIST<text>>>,
	result text,
	
	function_id int,
	function_name text,
	function_language text,
	fuction_count int,
	
	PRIMARY KEY ((user_id), test_case_id, topic_test_id, function_id)
);

CREATE INDEX u_name ON db.generating_test_for_the_code (user_name);
