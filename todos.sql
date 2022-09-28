 CREATE TABLE "todos" (
  "id" int PRIMARY KEY,
  "name" varchar NOT NULL,
  "description" varchar UNIQUE NOT NULL,
  "is_completed" bool DEFAULT true,
  "time" date
);

insert into todos
	(
		id,
		name,
		description,
		is_completed,
        time
	) values (
		1,
		'Do the dishes',
		'This is a reminder to do the dishes',
        true,
		'2022/09/23'
    ),
    (
        2,
		'Read a book',
		'This is a reminder to read The Catcher in the Rye',
        false,
		'2022/09/25'
    ),
    (
        3,
		'Go to the store',
		'This is a reminder to buy the shopping list on the supermarket',
        false,
		'2022/09/24'
    );

    
select * from todos;

select * from todos where is_completed = true;

