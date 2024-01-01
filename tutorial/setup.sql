/*
create schema api;

create role web_anon nologin;

grant usage on schema api to web_anon;

create role web_auth noinherit login password 'secret1234';

grant web_anon to web_auth;

create table api.todos (
  id serial primary key,
  done boolean not null default false,
  task text not null,
  due timestamptz
);

grant select on api.todos to web_anon;

insert into api.todos (task) values
  ('finish tutorial 0'), ('pat self on back');

  
grant usage on schema api to web_auth;    
grant all on api.todos to web_auth;
grant usage, select on sequence api.todos_id_seq to web_auth;

*/

