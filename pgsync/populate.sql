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
  FUID text PRIMARY KEY,
  from_fuid text,
  message text,
  created_time timestamp,
  shares integer,
  reaction integer,
  ID_FUID text,
  type_id integer,
  created_at timestamp,
  updated_at timestamp
);
CREATE TABLE UID (
  FUID text PRIMARY KEY,
  name text,
  Image text NULL ,
  reaction integer,
  type_id integer,
  created_at timestamp,
  updated_at timestamp
);
CREATE TABLE comment (
  FUID text PRIMARY KEY,
  message text,
  from_fuid text,
  created_time timestamp,
  shares integer,
  reaction integer,
  FUID_Post text,
  created_at timestamp,
  updated_at timestamp
);
