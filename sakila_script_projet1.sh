#/bin/bash
BASE_SQL_COMMAND='mysql -u root --password=azerty012345 -D sakila --table -e'


echo "select * from actor limit 5;"
$BASE_SQL_COMMAND "select * from actor limit 5;" 2>&1 | grep -v "Warning"

echo "select * from actor limit 5;"
read -n 1
echo "select first_name, last_name, concat(first_name,' ',last_name) as Actor_name from actor;"
$BASE_SQL_COMMAND "select first_name, last_name, concat(first_name,' ',last_name) as Actor_name from actor;" 2>&1 | grep -v "Warning"

echo "select first_name, last_name, concat(first_name,' ',last_name) as Actor_name from actor;"
read -n 1
echo "select first_name, last_name, concat(first_name,' ',upper(last_name)) as Actor_name from actor;"
$BASE_SQL_COMMAND "select first_name, last_name, concat(first_name,' ',upper(last_name)) as Actor_name from actor;" 2>&1 | grep -v "Warning"

echo "select first_name, last_name, concat(first_name,' ',upper(last_name)) as Actor_name from actor;"
read -n 1
echo "select first_name, last_name, concat(concat(upper(left(first_name,1)),lower(substring(first_name,2))),' ' ,upper(last_name)) as Actor_name from actor;"
$BASE_SQL_COMMAND "select first_name, last_name, concat(concat(upper(left(first_name,1)),lower(substring(first_name,2))),' ' ,upper(last_name)) as Actor_name from actor;" 2>&1 | grep -v "Warning"

echo "select first_name, last_name, concat(concat(upper(left(first_name,1)),lower(substring(first_name,2))),' ' ,upper(last_name)) as Actor_name from actor;"
read -n 1
echo "select * from actor where first_name='JENNIFER';"
$BASE_SQL_COMMAND "select * from actor where first_name='JENNIFER';" 2>&1 | grep -v "Warning"

echo "select * from actor where first_name='JENNIFER';"
read -n 1
echo "select * from actor where length(first_name)=3;"
$BASE_SQL_COMMAND "select * from actor where length(first_name)=3;" 2>&1 | grep -v "Warning"

echo "select * from actor where length(first_name)=3;"
read -n 1
echo "select *, length(first_name) as nb_char_first_name,length(last_name) as nb_char_last_name from actor order by nb_char_first_name desc;"
$BASE_SQL_COMMAND "select *, length(first_name) as nb_char_first_name,length(last_name) as nb_char_last_name from actor order by nb_char_first_name desc;" 2>&1 | grep -v "Warning"

echo "select *, length(first_name) as nb_char_first_name,length(last_name) as nb_char_last_name from actor order by nb_char_first_name desc;"
read -n 1
echo "select *, length(first_name) as nb_char_first_name,length(last_name) as nb_char_last_name from actor order by nb_char_first_name desc,nb_char_last_name asc;"
$BASE_SQL_COMMAND "select *, length(first_name) as nb_char_first_name,length(last_name) as nb_char_last_name from actor order by nb_char_first_name desc,nb_char_last_name asc;" 2>&1 | grep -v "Warning"

echo "select *, length(first_name) as nb_char_first_name,length(last_name) as nb_char_last_name from actor order by nb_char_first_name desc,nb_char_last_name asc;"
read -n 1
echo "select * from actor where last_name like '%SON%';"
$BASE_SQL_COMMAND "select * from actor where last_name like '%SON%';" 2>&1 | grep -v "Warning"

echo "select * from actor where last_name like '%SON%';"
read -n 1
echo "select * from actor where last_name like 'JOH%';"
$BASE_SQL_COMMAND "select * from actor where last_name like 'JOH%';" 2>&1 | grep -v "Warning"

echo "select * from actor where last_name like 'JOH%';"
read -n 1
echo "select * from actor where last_name like '%LI%' order by last_name asc, first_name asc;"
$BASE_SQL_COMMAND "select * from actor where last_name like '%LI%' order by last_name asc, first_name asc;" 2>&1 | grep -v "Warning"

echo "select * from actor where last_name like '%LI%' order by last_name asc, first_name asc;"
read -n 1
echo "select * from country where country in ('China','Afghanistan','Bangladesh');"
$BASE_SQL_COMMAND "select * from country where country in ('China','Afghanistan','Bangladesh');" 2>&1 | grep -v "Warning"

echo "select * from country where country in ('China','Afghanistan','Bangladesh');"
read -n 1
echo "alter table actor add middle_name varchar(255);"
$BASE_SQL_COMMAND "alter table actor add middle_name varchar(255);" 2>&1 | grep -v "Warning"

echo "alter table actor add middle_name varchar(255);"
read -n 1
echo "select * from actor limit 5;"
$BASE_SQL_COMMAND "select * from actor limit 5;" 2>&1 | grep -v "Warning"

echo "select * from actor limit 5;"
read -n 1
echo "alter table actor modify column middle_name blob;"
$BASE_SQL_COMMAND "alter table actor modify column middle_name blob;" 2>&1 | grep -v "Warning"

echo "alter table actor modify column middle_name blob;"
read -n 1
echo "alter table actor drop column middle_name;"
$BASE_SQL_COMMAND "alter table actor drop column middle_name;" 2>&1 | grep -v "Warning"

echo "alter table actor drop column middle_name;"
read -n 1
echo "select * from actor limit 5;"
$BASE_SQL_COMMAND "select * from actor limit 5;" 2>&1 | grep -v "Warning"

echo "select * from actor limit 5;"
read -n 1
echo "select last_name, count(last_name) as cfn from actor group by last_name order by cfn desc;"
$BASE_SQL_COMMAND "select last_name, count(last_name) as cfn from actor group by last_name order by cfn desc;" 2>&1 | grep -v "Warning"

echo "select last_name, count(last_name) as cfn from actor group by last_name order by cfn desc;"
read -n 1
echo "select last_name, count(last_name) as cfn from actor group by last_name having(count(last_name)>=3)order by last_name asc;"
$BASE_SQL_COMMAND "select last_name, count(last_name) as cfn from actor group by last_name having(count(last_name)>=3)order by last_name asc;" 2>&1 | grep -v "Warning"

echo "select last_name, count(last_name) as cfn from actor group by last_name having(count(last_name)>=3)order by last_name asc;"
read -n 1
echo "select first_name, count(first_name) as cfn from actor group by first_name order by first_name asc;"
$BASE_SQL_COMMAND "select first_name, count(first_name) as cfn from actor group by first_name order by first_name asc;" 2>&1 | grep -v "Warning"

echo "select first_name, count(first_name) as cfn from actor group by first_name order by first_name asc;"
read -n 1
echo "insert into actor (first_name,last_name) values ('laien','wu')"
$BASE_SQL_COMMAND "insert into actor (first_name,last_name) values ('laien','wu')" 2>&1 | grep -v "Warning"

echo "insert into actor (first_name,last_name) values ('laien','wu')"
read -n 1
echo "update actor set first_name='jean' where actor_id=201"
$BASE_SQL_COMMAND "update actor set first_name='jean' where actor_id=201" 2>&1 | grep -v "Warning"

echo "update actor set first_name='jean' where actor_id=201"
read -n 1
echo "select * from actor order by actor_id desc limit 3"
$BASE_SQL_COMMAND "select * from actor order by actor_id desc limit 3" 2>&1 | grep -v "Warning"

echo "select * from actor order by actor_id desc limit 3"
read -n 1
echo "delete from actor where actor_id>200"
$BASE_SQL_COMMAND "delete from actor where actor_id>200" 2>&1 | grep -v "Warning"

echo "delete from actor where actor_id>200"
read -n 1
echo "select * from actor order by actor_id desc limit 3;"
$BASE_SQL_COMMAND "select * from actor order by actor_id desc limit 3;" 2>&1 | grep -v "Warning"

echo "select * from actor order by actor_id desc limit 3;"
read -n 1
