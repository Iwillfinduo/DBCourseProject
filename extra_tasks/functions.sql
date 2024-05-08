-- Фукнция для получения списка предметов автором, которых пользователь является

create or replace function GetUserWorks(s_id int)
    returns table
        (
            item_id int,
            name varchar(1024),
			description text
        )
	language plpgsql
as
$$
begin
	return query
		select items.itemid,
			   items.name,
			   items.description
		from items left join authors on items.itemid = authors.itemid
		where authors.steamid = s_id;
end;
$$;

-- Фукнция для получения списка предметов определенного приложения

create or replace function GetAppWorks(a_id int)
    returns table
        (
            item_id int,
            name varchar(1024),
			description text
        )
	language plpgsql
as
$$
begin
    return query
		select items.itemid,
			   items.name,
			   items.description
		from items left join itemtype on items.typeid = itemtype.typeid
		where itemtype.appid = a_id;
end;
$$;

--Функция для счетчика напротив вкладки "игры" в steam профиле
--Показывает количество игр на аккаунте
create or replace function GetAmountOfGames(s_id int)
    returns int
	language plpgsql
as
$$
begin
    return (
		select count(*) as cnt
		from appuserrelations
		where userid = s_id and type = 0);
		
end;
$$;