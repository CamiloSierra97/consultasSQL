CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int,
  "role_id" uuid NOT NULL
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" varchar,
  "level" varchar NOT NULL,
  "teacher" varchar NOT NULL,
  "category_id" uuid NOT NULL
);

CREATE TABLE "user_courses" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid NOT NULL,
  "course_id" uuid NOT NULL
);

CREATE TABLE "course_video" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL,
  "course_id" uuid NOT NULL
);

CREATE TABLE "categories" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "roles" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);


insert into roles (
	id,
	name
) values (
	'89bc1a3a-0ea1-47e6-bec3-78d155ff0cd0',
	'Student'
),	(
	'cec6a44b-f3d4-415e-908c-311476366d4b',
	'Teacher'
),	(
	'cbf3dc87-7a59-4d28-9250-079ba6be6560',
	'Admin'
);


insert into users (
	id, 
	name,
	email,
	password,
	age,
	role_id
) values (
	'85b0d524-0649-4d2d-a6a0-769d6db1c129',
	'Camilo',
	'sierrcamilo3@gmail.com',
	'Onelink2022*',
	27,
	'89bc1a3a-0ea1-47e6-bec3-78d155ff0cd0'
),	(
	'31bea082-8d5f-427a-9b04-122d2e1f3191',
	'Carlos',
	'krlos@gmail.com',
	'CarlitosAlimana99',
	37,
	'cec6a44b-f3d4-415e-908c-311476366d4b'
),	(
	'db39b842-3b6f-4075-ae24-f061ccd85865',
	'David',
	'lorddavid@outlook.es',
	'HelloWorld2022+',
	40,
	'cbf3dc87-7a59-4d28-9250-079ba6be6560'
);



insert into categories (
	id,
	name
) values (
	'4c91e6ac-65c8-4ea4-8a5d-8976237f141f',
	'Technology'
),(
	'fab50568-32f9-4391-9555-133622fea213',
	'Developing'
),	(
	'a0cefc76-dc5c-44a2-9ae3-207b318ac39b',
	'Engineering'
);


insert into courses (
	id,
	title,
	description,
	level,
	teacher,
	category_id
) values (
	'b95c148f-6999-442f-aad6-135c0cf87aaa',
	'Javascript',
	'Javascript for beginners',
	'Low',
	'Carlos Restrepo',
	'fab50568-32f9-4391-9555-133622fea213'
),	(
	'36b2f241-bda5-47fd-820a-ffec58720be5',
	'Maintenance management',
	'Maintenance as part of production',
	'Medium',
	'Laura Bohorquez',
	'a0cefc76-dc5c-44a2-9ae3-207b318ac39b'
),	(
	'afb714f2-d756-4339-809e-cd946856e68e',
	'Bitcoin and blockchain',
	'How to move in the cryptocurrency market',
	'High',
	'Andrés Parra',
	'4c91e6ac-65c8-4ea4-8a5d-8976237f141f'
);



insert into user_courses (
	id,
	user_id,
	course_id
) values (
	'b3aeaa02-bb80-43fc-b046-991e8e43828b',
	'85b0d524-0649-4d2d-a6a0-769d6db1c129',
	'b95c148f-6999-442f-aad6-135c0cf87aaa'
),	(
	'2dff1252-44a9-4111-9ae4-660809bdee65',
	'31bea082-8d5f-427a-9b04-122d2e1f3191',
	'36b2f241-bda5-47fd-820a-ffec58720be5'
),	(
	'62da6525-2ebf-445a-89ec-91ea386868b6',
	'db39b842-3b6f-4075-ae24-f061ccd85865',
	'afb714f2-d756-4339-809e-cd946856e68e'
),	(
	'2aad0a9d-13ec-4c56-bb2c-ca8dd86aa0e7',
	'85b0d524-0649-4d2d-a6a0-769d6db1c129',
	'afb714f2-d756-4339-809e-cd946856e68e'
);


insert into course_video (
	id,
	title,
	url,
	course_id
) values (
	'24550f44-8d2d-420e-8255-89edc83133e9',
	'First steps',
	'www.engineering.com',
	'36b2f241-bda5-47fd-820a-ffec58720be5'
),	(
	'721d8e37-ba05-464d-8c09-c6190d426678',
	'How to make an improvement',
	'www.courses.com',
	'afb714f2-d756-4339-809e-cd946856e68e'
),	(
	'3a8fddbe-96ac-4f0d-a79f-c968e634c74e',
	'Types of data',
	'www.javascript.com',
	'b95c148f-6999-442f-aad6-135c0cf87aaa'
), (
	'0a20161f-3d83-4a7a-81db-2e74bf70e67b',
	'How to buy bitcoin',
	'www.bitcoin.com',
	'afb714f2-d756-4339-809e-cd946856e68e'
),	(
	'e6ebac85-7fa5-49e4-9a1d-2dda13c4659e',
	'Materials endurance',
	'www.courses.com/metals',
	'36b2f241-bda5-47fd-820a-ffec58720be5'
),	(
	'f073f2eb-548a-4a0e-90d9-02529480acf5',
	'Functions',
	'www.javascript.con/funcions',
	'b95c148f-6999-442f-aad6-135c0cf87aaa'
);



ALTER TABLE "users" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("id");

ALTER TABLE "user_courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "user_courses" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

ALTER TABLE "course_video" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

