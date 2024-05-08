-- View списка коллекций и их авторов, полезно при отображении страницы коллекции,
-- где отображаются и данные коллекции и данные автора
create view UserCollection as
select usr.steamid as author_id, usr.name as author_name, usr.level as author_level, col.collectionid as collection_id, col.name as collection_name, col.description as collection_description 
from users usr
left join Collections col on Col.AuthorID = usr.SteamID;

-- View списка приложения и типа предмета, полезно при выводе списка всех типов
-- предметов в мастерской
create view AppItemType as
select type.typeid as type_id, type.name as type_name, type.description as type_description, ap.appid as app_id, ap.name as app_name, ap.description as app_description
from apps ap
left join itemtype type on ap.appid = type.appid;

-- Статистический View, например для steamcharts
-- Имеет столбец с количеством пользователей обладающих приложением
create view AppChart as
select rel.appid, apps.name, rel.owners_count, apps.description
from (select rel.appid, count(*) as owners_count
from appuserrelations as rel
where rel.type = 0
group by rel.appid) as rel
left join apps on apps.appid = rel.appid
order by rel.owners_count