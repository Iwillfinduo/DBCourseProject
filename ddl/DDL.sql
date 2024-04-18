SET search_path TO project;
drop table if exists Users cascade;
create table Users
(
    SteamID integer primary key not null,
    Login varchar(255) not null,
    Name varchar(1024) not null,
    Description text,
    Level integer not null check (Level > 0)
);


drop table if exists Apps cascade;
create table Apps
(
    AppID integer primary key not null,
    Name varchar(1024) not null,
    Description text,
    Icon varchar(255),
    AppFiles text not null
);

drop table if exists ItemType cascade;
create table ItemType
(
    TypeID integer primary key not null,
    AppID integer references Apps(AppID) not null,
    Name varchar(1024) not null,
    Description text
);

drop table if exists ItemVersions cascade;
create table ItemVersions
(
    ChangeDateTime timestamp default now() not null,
    ItemID integer not null,
    Name varchar(1024) not null,
    Icon varchar(255),
    Description text,
    ItemFiles text not null,
    ChangeLog text not null,
	primary key(ChangeDateTime, ItemID)
);

drop table if exists Items cascade;
create table Items
(
    ItemID integer primary key not null,
    TypeID integer references ItemType(TypeID) not null,
    Name varchar(1024) not null,
    Icon varchar(255),
    Description text,
    PostDate timestamp,
    UpdateDate timestamp,
    CurrentFiles text not null,
	unique(UpdateDate, ItemID),
	unique(PostDate, ItemID)
);
alter table ItemVersions add constraint fk
    foreign key (ItemID) references Items(ItemID);
	
alter table Items add constraint fk2
    foreign key (PostDate, ItemID) references ItemVersions(ChangeDateTime, ItemID),
	add constraint fk
    foreign key (UpdateDate, ItemID) references ItemVersions(ChangeDateTime, ItemID);

drop table if exists Collections cascade;
create table Collections
(
    CollectionID integer primary key not null,
    AuthorID integer references Users (SteamID) not null,
    Name varchar(1024) not null,
    Icon varchar(255),
    Description text
);

drop table if exists CollectionItemsRelations cascade;
create table CollectionItemsRelations
(
    CollectionID integer references Collections (CollectionID),
    ItemID integer references Items (ItemID),
    primary key (CollectionID, ItemID)
);

drop table if exists AppUserRelations cascade;
create table AppUserRelations
(
    AppID integer references Apps (AppID),
    UserID integer references Users (SteamID),
    type integer check (type >= 0 and type <= 2), -- 0 - own, 1 - Refound, 2 - FreeWeekend
    primary key (AppID, UserID)
);
    
drop table if exists Authors cascade;
create table Authors
(
    ItemID integer references Items (ItemID),
    SteamID integer references Users (SteamID),
    primary key (ItemID, SteamID)
);