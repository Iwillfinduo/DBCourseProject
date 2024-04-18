-- 1) Узнать количество модификаций для игры Garry's mod

select COUNT(itemid)
from Items where
Items.typeid in
(select typeid from ItemType where
ItemType.appid in (select appid from apps where apps.name = 'Garry''s mod'));

-- 2) Узнать среднее количество модификаций у каждого пользователя в авторстве

select AVG(cnt)
from (select count(ItemID) as cnt from authors group by steamId) as sbqry;

-- 3) Узнать среднее количество Коллекций у каждого пользователя в авторстве

select AVG(cnt)
from (select count(collectionid) as cnt from collections group by authorid) as sbqry;

-- 4) Вернуть ники пользователей отсортированных по уровню (топ 10)

select name, level from
users order by level desc
limit 10;

-- 5) Вывести таблицу с предметом и его типом

select name, type_name from items left join (select name as type_name, typeid from itemtype) as itemtype on items.typeid = itemtype.typeid

-- 6) Вывести расчетную таблицу по количеству разных типов владений играми

select type, count(*) from appuserrelations group by type;

-- 7) Вывести коллекции с больше чем 5 модами

select name from 
(select collectionid from CollectionItemsRelations
 group by collectionid having count(*) > 5) as grp join collections
 on grp.collectionid = collections.collectionid;

-- 8) Последнюю запись в версионной таблице

select * from itemversions
order by changedatetime desc
limit 1

-- 9) Первую запись в версионной таблице

select * from itemversions
order by changedatetime
limit 1

-- 10) Средний уровень в стиме учитывая всех у кого уровень больше 1


select avg(level) from users where users.level > 1;

