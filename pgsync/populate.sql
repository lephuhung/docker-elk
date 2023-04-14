CREATE TABLE datadoc (
	article_id  text  PRIMARY KEY,
	topic text,
	href text,
	publish_date date,
	newspaper text,
	created_date date,
	language text,
	sapo text,
	content text,
	feature_image text
);
CREATE TABLE post (
  uid text,
  message text,
  from_uid text,
  created_time timestamp,
  shares integer,
  reaction integer,
  id_uid text,
  type_id integer,
  created_at timestamp,
  updated_at timestamp
);
CREATE TABLE uid (
  uid text,
  name text,
  image text NULL ,
  reaction integer,
  type_id integer,
  created_at timestamp,
  updated_at timestamp
);
CREATE TABLE comment (
  uid text,
  message text,
  from_uid text,
  created_time timestamp,
  shares integer,
  reaction integer,
  uid_post text,
  created_at timestamp,
  updated_at timestamp
);
-- nhớ không viết in hoa--