INSERT INTO db.generating_test_for_the_code (
	user_id,
	user_email,
	user_name,
	user_password,
	topic_test_id,
	topic_test_name,
	test_case_id,
	description,
	result,
	function_id,
	function_name,
	function_language,
	fuction_count
	) VALUES (
		43,
		'lola@mail.com',
		{"firstname": 'Lola', "lastname": 'Koval'},
		'qwert1889',
		451,
		'Black box',
		84,
		[['No quotes are closed.', 'Invalid sign stands before the words as well.']],
		'Closed legs.',
		21,
		'upload',
		'Python',
		3
	);
		
SELECT * FROM db.generating_test_for_the_code;
		
INSERT INTO db.generating_test_for_the_code (
	user_id,
	user_email,
	user_name,
	user_password,
	topic_test_id,
	topic_test_name,
	test_case_id,
	description,
	result,
	function_id,
	function_name,
	function_language,
	fuction_count
	) VALUES (
		51,
		'nike@mail.com',
		{"firstname": 'Nike', "lastname": 'Vill'},
		'qwfk14',
		473,
		'While box',
		20,
		[['Excessive tab between functions.', 'Invalid stands before the words as good.']],
		'Closed function.',
		36,
		'add',
		'C++',
		1
		);
		
SELECT * FROM db.generating_test_for_the_code;
		
INSERT INTO db.generating_test_for_the_code (
	user_id,
	user_email,
	user_name,
	user_password,
	topic_test_id,
	topic_test_name,
	test_case_id,
	description,
	result,
	function_id,
	function_name,
	function_language,
	fuction_count
	) VALUES (
		34,
		'no@mail.com',
		{"firstname": 'No', "lastname": 'Nothing'},
		'bjnkml',
		66,
		'While box',
		29,
		[['No ":" character is required', 'Number stands before required.']],
		'Add number.',
		16,
		'add',
		'Python',
		14
		);

SELECT * FROM db.generating_test_for_the_code;

UPDATE db.generating_test_for_the_code
SET user_name = {
	firstname: 'Endy',
	lastname: 'Fanny'
}
WHERE user_id = 34 AND test_case_id = 29 AND topic_test_id= 66 AND function_id = 16;

SELECT * FROM db.generating_test_for_the_code;

UPDATE db.generating_test_for_the_code 
SET function_language = 'PHP'
WHERE user_id = 43 AND test_case_id = 84 AND topic_test_id= 451 AND function_id = 21;

SELECT * FROM db.generating_test_for_the_code;

UPDATE db.generating_test_for_the_code 
SET description = [['No no no no no no', 'No']]
WHERE user_id = 34 AND test_case_id = 29 AND topic_test_id= 66 AND function_id = 16;

SELECT * FROM db.generating_test_for_the_code;

DELETE result FROM db.generating_test_for_the_code
WHERE user_id = 34 AND test_case_id = 29 AND topic_test_id= 66 AND function_id = 16;

SELECT * FROM db.generating_test_for_the_code;

DELETE user_password FROM db.generating_test_for_the_code 
WHERE user_id = 43 AND test_case_id = 84 AND topic_test_id= 451 AND function_id = 21;

SELECT * FROM db.generating_test_for_the_code;

DELETE result FROM db.generating_test_for_the_code 
WHERE user_id = 43 AND test_case_id = 84 AND topic_test_id= 451 AND function_id = 21;

SELECT * FROM db.generating_test_for_the_code;

SELECT topic_test_name, description FROM db.generating_test_for_the_code
WHERE user_id = 43;

SELECT user_name, function_name FROM db.generating_test_for_the_code
WHERE user_name = {firstname: 'Endy', lastname: 'Fanny'};

SELECT function_language, description FROM db.generating_test_for_the_code
WHERE user_name = {"firstname": 'Lola', "lastname": 'Koval'};