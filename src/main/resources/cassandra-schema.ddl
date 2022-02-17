
CREATE KEYSPACE IF NOT EXISTS ks2 
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '1'}  
AND durable_writes = true;

CREATE TABLE IF NOT EXISTS ks2.book_by_id (
    id			text,
    author_id 		list<text>,
    author_names 	      list<text>,
    book_description    text,
    book_name 		text,
    cover_ids 		list<text>,
    published_date 	date,
    PRIMARY KEY((id))
);

CREATE TABLE IF NOT EXISTS  ks2.books_by_user (
    user_id 		text,
    book_id 		text,
    book_name 		text,
    author_names 		list<text>,
    cover_ids 		list<text>,
    readingstatus 	text,
    timeuuid 		timeuuid,
    rating 			int,
    PRIMARY KEY ((user_id), readingstatus, timeuuid, book_id)
) WITH CLUSTERING ORDER BY (readingstatus ASC, timeuuid DESC, book_id ASC);






