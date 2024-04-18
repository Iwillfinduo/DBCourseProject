
truncate table Users cascade;
truncate table Apps cascade;
truncate table ItemType cascade;
truncate table ItemVersions cascade;
truncate table Items cascade;
truncate table Collections cascade;
truncate table CollectionItemsRelations cascade;
truncate table AppUserRelations cascade;
truncate table Authors cascade;


insert into Users (SteamID, Login, Name, Description, Level)
values (1, 'gaben', 'Steam Owner', 'The biggest dude on this platform', 9999),
       (2, 'hidie042', 'I will find u', null, 23),
       (3, 'rula', 'Rula', null, 1),
       (4, 'vadim4ik2456', 'caxapnana', null, 9),
       (5, 'nikita4526', 'Рамзанка Дыров', 'крутяк', 24),
	   (6, 'antonbordwine', 'Антошка лукошко', 'gpa 4.0', 999),
       (7, 'vladosikpirojosik2546', 'Cringeslav', 'Там много матюков я копировать не буду', 43),
       (8, 'sergeytheingeneer', 'имя профиля', null, 11),
       (9, 'ivanpstuh24512', 'Хлопец', null, 15),
       (10, 'someforeginguyfromcs', 'Jdix', 'your king', 67),
       (11, 'Timoxaclassmattte', 'GOmODrILL', null, 22),
       (12, 'Ksyblg21', 'liveCutlet', null, 2),
       (13, 'neytrinozero', 'neytrinozero', null, 1),
       (14, 'anotherguyfromcsidonno', 'PaRaZiT', 'Dno.±±±±±', 50),
       (15, 'Maximononas', 'Censored', null, 14);


insert into Apps (AppID, Name, Description, Icon, AppFiles)
values (1, 'Counter-Strike 2', 'Более двух десятилетий Counter-Strike служит примером первоклассной соревновательной игры, путь развития которой определяют миллионы игроков со всего мира. Теперь пришло время нового этапа — Counter-Strike 2.', 'C:/plasetoicon/cs.png', 'C:/plase.zip'),
       (2, 'Garry''s mod', 'Garry''s Mod is a physics sandbox. There aren''t any predefined aims or goals. We give you the tools and leave you to play.', 'C:/plasetoicon/gm.png', 'C:/plase.zip'),
       (3, 'Team Fortress 2', 'Девять принципиально различающихся классов дают простор для любых тактик и способностей. В игру постоянно добавляются новые игровые режимы, карты, снаряжение и, самое главное, шляпы!', 'C:/plasetoicon/tf2.png', 'C:/plase.zip'),
       (4, 'Left4Dead 2', 'Настоящий зомби-апокалипсис Left 4 Dead 2 (L4D2) — это долгожданный сиквел к обладательнице многих наград Left 4 Dead — лучшей кооперативной игре 2008 года. В этом кооперативном хоррор-шутере от первого лица вы вместе с друзьями пройдёте пять больших', 'C:/plasetoicon/lf2.png', 'C:/plase.zip'),
       (5, 'Dota 2', 'Ежедневно миллионы игроков по всему миру сражаются от лица одного из более сотни героев Dota 2, и даже после тысячи часов в ней есть чему научиться. Благодаря регулярным обновлениям игра живёт своей жизнью: геймплей, возможности и герои постоянно преображаются.', 'C:/plasetoicon/dota2.png', 'C:/plase.zip'),
       (6, 'Portal 2', 'Программа вечного тестирования расширена: создавайте совместные головоломки для себя и друзей!', 'C:/plasetoicon/portal2.png', 'C:/plase.zip'),
       (7, 'Insurgency', 'В этой многопользовательской и кооперавтивной игре Вы сражаетесь в кровавых боях на улицах, лицом к лицу с врагом, где выживание Вашей команды зависит от контроля важных точек и уничтожения вражеских боеприпасов, все оперирующее на движке Source.', 'C:/plasetoicon/insurgency.png', 'C:/plase.zip'),
       (8, 'Unturned', 'Вы — выживший в руинах цивилизации, кишащих зомби. Действуйте заодно с друзьями и объединяйтесь в союзы, чтобы остаться в живых.', 'C:/plasetoicon/untitled.png', 'C:/plase.zip'),
       (9, 'Wallpaper Engine', 'Устанавливайте шикарные живые обои на рабочий стол. Анимируйте собственные изображения для создания новых обоев или импортируйте видео/веб-сайты и делитесь ими в Мастерской Steam!', 'C:/plasetoicon/wpe.png', 'C:/plase.zip'),
       (10, 'Everlasting Summer', 'Полюбившаяся многим визуальная новелла «Бесконечное Лето» от российских разработчиков – теперь и в Стиме!', 'C:/plasetoicon/is.png', 'C:/plase.zip'),
       (11, 'Hotline Miami 2 Wrong Number','Hotline Miami 2: Wrong Number is the brutal conclusion to the Hotline Miami saga, set against a backdrop of escalating violence and retribution over spilled blood in the original game.', 'C:/plasetoicon/hm2.png', 'C:/plase.zip'),
       (12, 'Half-life: Alyx', 'Half-Life: Alyx — это возвращение Valve во вселенную Half-Life в виртуальной реальности. Это история невозможной борьбы с жестокой расой пришельцев, известной как Альянс. События происходят между Half-Life и Half-Life 2. Вы играете за Аликс Вэнс, и вы — единственный', 'C:/plasetoicon/hl_a.png', 'C:/plase.zip'),
       (13, 'Rust', 'The only aim in Rust is to survive. Everything wants you to die - the island’s wildlife and other inhabitants, the environment, other survivors. Do whatever it takes to last another night.', 'C:/plasetoicon/Rust.png', 'C:/plase.zip'),
       (14, 'Arma 3', 'Испытайте вкус боевых действий в массовой военной игре. C более чем 20 видами техники и 40 видами оружия, различными режимами игры и безграничными возможностями создания контента, вы получаете наилучший реализм и разнообразие в Arma 3.', 'C:/plasetoicon/Arma3.png', 'C:/plase.zip'),
       (15, 'Teardown', 'Спланируйте идеальное ограбление и полностью разрушаемом воксельном мире. Взрывайте или тараньте стены, чтобы прокладывать короткие пути. Складывайте объекты друг на друга, чтобы подняться выше. Используйте окружение как пожелаете, чтобы получить преимущество.', 'C:/plasetoicon/Teardown.png', 'C:/plase.zip');


insert into ItemType (TypeID, AppID, Name, Description)
values (1, 1, 'Item', 'Some shit to sold for normies'),
       (2, 1, 'Map', 'Maps for game idonno'),
       (3, 2, 'Addon', 'Fullsized modification for game'),
       (4, 2, 'Save', 'Save for game'),
       (5, 2, 'Dupe', 'Some object saved by player'),
       (6, 2, 'Demo', 'Captured gameplay by engine'),
       (7, 3, 'Item', 'Some shit to sold for normies'),
       (8, 3, 'Map', 'Maps for game idonno'),
       (9, 4, 'Skins', 'Skins for game entity'),
       (10, 4, 'GameModes', 'Game modes for l4d2'),
       (11, 4, 'Other addons', 'Other addons for game'),
       (12, 5, 'Items', 'Another items'),
       (13, 5, 'Games and Scripts', 'Some games and scripts'),
       (14, 6, 'Works', 'Might be anything'),
       (15, 7, 'Maps', 'still maps tho'),
       (16, 7, 'Mods', 'Not mapps');


insert into Items (ItemID, TypeID, Name, Description, Icon, PostDate, UpdateDate, CurrentFiles)
values (1, 3, 'gm_combinestruct', 'This is what happens when you disconnect with combine soldiers still on the map', 'placeholder.png', null, null, 'placeholder.zip'),
       (2, 3, 'gm_construct but its still under construction', 'Hey, wait! You''re not supposed to be in here, its still under construction! Yes, I know one of the buildings defy the laws of physics.', 'placeholder.png', null, null, 'placeholder.zip'),
       (3, 3, 'gm_construct_mini', null, 'placeholder.png', null, null, 'placeholder.zip'),
       (4, 3, 'gm_construct 10', null, 'placeholder.png', null, null, 'placeholder.zip'),
       (5, 3, 'gm_renostruct_v2', null, 'placeholder.png', null, null, 'placeholder.zip'),
       (6, 3, 'gm_excess_islands', null, 'placeholder.png', null, null, 'placeholder.zip'),
       (7, 3, 'HomeTown 1999', null, 'placeholder.png', null, null, 'placeholder.zip'),
       (8, 2, 'Foroglio', 'Welcome to the small village of Foroglio, nestled amidst the Swiss mountains. There is a threat of destruction explosive equipment, and your task is to prevent this attack! GLHF!', 'placeholder.png', null, null, 'placeholder.zip'),
       (9, 2, 'Alpine WIP', '5v5 WIP hostage for the mapcore comp :P', 'placeholder.png', null, null, 'placeholder.zip'),
       (10, 1, 'Awp | Inheritance | CS2', 'Based on traditional Chinese porcelain and Delft blauw art!', 'placeholder.png', null, null, 'placeholder.zip'),
       (11, 1, 'ALT F4 | Spray', 'In case you stand no chance against the enemy team, make sure to have this grafitti.', 'placeholder.png', null, null, 'placeholder.zip'),
       (12, 1, 'HE | Home Run', 'It''s to loong sry', 'placeholder.png', null, null, 'placeholder.zip'),
       (13, 3, 'Gordon Brickman [Playermodel + Ragdoll]', 'The hero of the Half-Life series, now in glorious brick form. Designed to go with the Blocky Half Life 2 conversion project. I made him seperate because I knew people would want him without the extras', 'placeholder.png', null, null, 'placeholder.zip'),
       (14, 3, 'EaselX | Pixel Art Boards!', null, 'placeholder.png', null, null, 'placeholder.zip'),
       (15, 3, '3D Stream Radio', 'The 3D Stream Radio is a toolgun spawnable scripted entity that allows you to play streams from the internet and local files as 3D world sound. You can spawn it with the toolgun and change its settings.', 'placeholder.png', null, null, 'placeholder.zip');

insert into ItemVersions (ChangeDateTime, ItemID, Name, Icon, Description, ItemFiles, ChangeLog)
values ('2024-10-11 10:23:54', 1, 'gm_combinestruct', 'placeholder.png', null, 'placeholder.zip', 'Первая версия'),
       ('2024-10-19 10:23:54', 1, 'gm_combinestruct', 'placeholder.png', 'This is what happens when you disconnect with combine soldiers still on the map', 'placeholder.zip', 'Последняя версия'),
       ('2024-10-11 10:23:54', 2, 'gm_construct but its still under construction', 'placeholder.png', null, 'placeholder.zip', 'Первая версия'),
       ('2024-10-19 10:23:54', 2, 'gm_construct but its still under construction', 'placeholder.png', 'Hey, wait! You''re not supposed to be in here, its still under construction! Yes, I know one of the buildings defy the laws of physics.', 'placeholder.zip', 'Последняя версия'),
       ('2024-10-11 10:23:54', 3, 'gm_construct_mini', 'placeholder.png', null, 'placeholder.zip', 'Первая версия'),
       ('2024-10-19 10:23:54', 3, 'gm_construct_mini', 'placeholder.png', null, 'placeholder.zip', 'Последняя версия'),
       ('2024-10-11 10:23:54', 4, 'gm_construct 10', 'placeholder.png', null, 'placeholder.zip', 'Первая версия'),
       ('2024-10-19 10:23:54', 4, 'gm_construct 10', 'placeholder.png', null, 'placeholder.zip', 'Последняя версия'),
       ('2024-10-11 10:23:54', 5, 'gm_renostruct_v2', 'placeholder.png', null, 'placeholder.zip', 'Первая версия'),
       ('2024-10-19 10:23:54', 5, 'gm_renostruct_v2', 'placeholder.png', null, 'placeholder.zip', 'Последняя версия'),
       ('2024-10-11 10:23:54', 6, 'gm_excess_islands', 'placeholder.png', null, 'placeholder.zip', 'Первая версия'),
       ('2024-10-19 10:23:54', 6, 'gm_excess_islands', 'placeholder.png', null, 'placeholder.zip', 'Последняя версия'),
       ('2024-10-11 10:23:54', 7, 'HomeTown 1999', 'placeholder.png', null, 'placeholder.zip', 'Первая версия'),
       ('2024-10-19 10:23:54', 7, 'HomeTown 1999', 'placeholder.png', null, 'placeholder.zip', 'Последняя версия'),
       ('2024-10-11 10:23:54', 8, 'Foroglio', 'placeholder.png', null, 'placeholder.zip', 'Первая версия'),
       ('2024-10-19 10:23:54', 8, 'Foroglio', 'placeholder.png', 'Welcome to the small village of Foroglio, nestled amidst the Swiss mountains. There is a threat of destruction explosive equipment, and your task is to prevent this attack! GLHF!', 'placeholder.zip', 'Последняя версия'),
       ('2024-10-11 10:23:54', 9, 'Alpine WIP', 'placeholder.png', null, 'placeholder.zip', 'Первая версия'),
       ('2024-10-19 10:23:54', 9, 'Alpine WIP', 'placeholder.png', '5v5 WIP hostage for the mapcore comp :P', 'placeholder.zip', 'Последняя версия'),
       ('2024-10-11 10:23:54', 10, 'Awp | Inheritance | CS2', 'placeholder.png', null, 'placeholder.zip', 'Первая версия'),
       ('2024-10-19 10:23:54', 10, 'Awp | Inheritance | CS2', 'placeholder.png', 'Based on traditional Chinese porcelain and Delft blauw art!', 'placeholder.zip', 'Последняя версия'),
       ('2024-10-11 10:23:54', 11, 'ALT F4 | Spray', 'placeholder.png', null, 'placeholder.zip', 'Первая версия'),
       ('2024-10-19 10:23:54', 11, 'ALT F4 | Spray', 'placeholder.png', 'In case you stand no chance against the enemy team, make sure to have this grafitti.', 'placeholder.zip', 'Последняя версия'),
       ('2024-10-11 10:23:54', 12, 'HE | Home Run', 'placeholder.png', null, 'placeholder.zip', 'Первая версия'),
       ('2024-10-19 10:23:54', 12, 'HE | Home Run', 'placeholder.png', 'It''s to loong sry', 'placeholder.zip', 'Последняя версия'),
       ('2024-10-11 10:23:54', 13, 'Gordon Brickman [Playermodel + Ragdoll]', 'placeholder.png', null, 'placeholder.zip', 'Первая версия'),
       ('2024-10-19 10:23:54', 13, 'Gordon Brickman [Playermodel + Ragdoll]', 'placeholder.png', 'The hero of the Half-Life series, now in glorious brick form. Designed to go with the Blocky Half Life 2 conversion project. I made him seperate because I knew people would want him without the extras', 'placeholder.zip', 'Последняя версия'),
       ('2024-10-11 10:23:54', 14, 'EaselX | Pixel Art Boards!', 'placeholder.png', null, 'placeholder.zip', 'Первая версия'),
       ('2024-10-19 10:23:54', 14, 'EaselX | Pixel Art Boards!', 'placeholder.png', null, 'placeholder.zip', 'Последняя версия'),
       ('2024-10-11 10:23:54', 15, '3D Stream Radio', 'placeholder.png', null, 'placeholder.zip', 'Первая версия'),
       ('2024-10-19 10:23:54', 15, '3D Stream Radio', 'placeholder.png', 'The 3D Stream Radio is a toolgun spawnable scripted entity that allows you to play streams from the internet and local files as 3D world sound. You can spawn it with the toolgun and change its settings.', 'placeholder.zip', 'Последняя версия');

update Items set PostDate = '2024-10-11 10:23:54', UpdateDate = '2024-10-11 10:23:54'; 


insert into Collections (CollectionID, AuthorID, Name, Icon, Description)
values (1, 1, 'Gaben Collection', 'placeholder.png', null),
       (2, 2, 'Construct Collection', 'placeholder.png', 'Gmconstructs Collection'),
       (3, 3, 'Gm items Collection', 'placeholder.png', 'U know what it is'),
       (4, 4, 'Cs maps Collection', 'placeholder.png', 'U know what it is'),
       (5, 5, 'Cs Items Collection', 'placeholder.png', 'U are already know what it is'),
       (6, 6, 'Excess Islands Collection', 'placeholder.png', 'With single one item in it'),
       (7, 7, 'Mixed Gm Collection 3 Items in it', 'placeholder.png', 'I love doing combinations'),
       (8, 8, 'Mixed Gm Collection 4 Items in it', 'placeholder.png', 'And write meanless descriptions'),
       (9, 9, 'Mixed Gm Collection 5 Items in it', 'placeholder.png', 'I have to write one more hw till mornin, but i am doing this'),
       (10, 10, 'Mixed Gm Collection 6 Items in it', 'placeholder.png', 'How are you doing actually?'),
       (11, 11, 'Mixed CS Collection 3 items in it', 'placeholder.png', 'Now it is CS'),
       (12, 12, 'Mixed CS Collection 4 items in it', 'placeholder.png', 'I hate to write one quotation mark, in C++ it is bad'),
       (13, 13, 'Mixed CS Collection 5 items in it', 'placeholder.png', 'I think you got the pattern of names'),
       (14, 14, 'Mixed CS Collection 2 items in it', 'placeholder.png', 'Ha-ha got ya, it is not so easy right'),
       (15, 15, 'HomeTown 1999 collection', 'placeholder.png', 'Have a nice eve');


insert into CollectionItemsRelations(CollectionID, ItemID)
values (1, 1),
       (1, 2),
       (2, 1), (2, 2), (2, 3), (2, 4), (2, 5),
       (3, 13), (3, 14), (3, 15),
       (4, 8), (4, 9),
       (5, 10), (5, 11), (5, 12),
       (6, 6),
       (7, 6), (7, 1), (7, 2),
       (8, 6), (8, 1), (8, 2), (8, 3),
       (9, 6), (9, 1), (9, 2), (9, 3), (9, 4),
       (10, 6), (10, 1), (10, 2), (10, 3), (10, 4), (10, 5),
       (11, 10), (11, 11), (11, 12),
       (12, 10), (12, 11), (12, 12), (12, 8); -- ha-ha no more other is empty


insert into AppUserRelations (AppID, UserID, type)
values (1, 1, 0), (1, 2, 0), (1, 3, 0), (1, 4, 0), (1, 5, 0), (1, 6, 0), (1, 7, 0), (1, 8, 0), (1, 9, 0), (1, 10, 0), (1, 11, 0), (1, 12, 0), (1, 13, 0), (1, 14, 0), (1, 15, 0),
(2, 1, 0), (2, 2, 0), (2, 3, 0), (2, 4, 0), (2, 5, 0), (2, 6, 0), (2, 7, 0), (2, 8, 0), (2, 9, 0), (2, 10, 0), (2, 11, 0), (2, 12, 0), (2, 13, 0), (2, 14, 0), (2, 15, 0),
(3, 1, 0), (3, 2, 0), (3, 3, 0), (3, 4, 0), (3, 5, 0), (3, 6, 0), (3, 7, 0), (3, 8, 0), (3, 9, 0), (3, 10, 0), (3, 11, 0), (3, 12, 0), (3, 13, 0), (3, 14, 0), (3, 15, 0),
(4, 1, 0), (4, 2, 0), (4, 3, 0), (4, 4, 0), (4, 5, 0), (4, 6, 0), (4, 7, 0), (4, 8, 0), (4, 9, 0), (4, 10, 0), (4, 11, 0), (4, 12, 0), (4, 13, 0), (4, 14, 0), (4, 15, 0),
(5, 1, 0), (5, 2, 0), (5, 3, 0), (5, 4, 0), (5, 5, 0), (5, 6, 0), (5, 7, 0), (5, 8, 0), (5, 9, 0), (5, 10, 0), (5, 11, 0), (5, 12, 0), (5, 13, 0), (5, 14, 0), (5, 15, 0),
(6, 1, 0), (6, 2, 0), (6, 3, 0), (6, 4, 0), (6, 5, 0), (6, 6, 0), (6, 7, 0), (6, 8, 0), (6, 9, 0), (6, 10, 0), (6, 11, 0), (6, 12, 0), (6, 13, 0), (6, 14, 0), (6, 15, 0),
(7, 1, 0), (7, 2, 0), (7, 3, 0), (7, 4, 0), (7, 5, 0), (7, 6, 0), (7, 7, 0), (7, 8, 0), (7, 9, 0), (7, 10, 0), (7, 11, 0), (7, 12, 0), (7, 13, 0), (7, 14, 0), (7, 15, 0),
(8, 1, 0), (8, 2, 0), (8, 3, 0), (8, 4, 0), (8, 5, 0), (8, 6, 0), (8, 7, 0), (8, 8, 0), (8, 9, 0), (8, 10, 0), (8, 11, 0), (8, 12, 0), (8, 13, 0), (8, 14, 0), (8, 15, 0),
(9, 1, 0), (9, 2, 0), (9, 3, 0), (9, 4, 0), (9, 5, 0), (9, 6, 0), (9, 7, 0), (9, 8, 0), (9, 9, 0), (9, 10, 0), (9, 11, 0), (9, 12, 0), (9, 13, 0), (9, 14, 0), (9, 15, 0),
(10, 1, 0), (10, 2, 0), (10, 3, 0), (10, 4, 0), (10, 5, 0), (10, 6, 0), (10, 7, 0), (10, 8, 0), (10, 9, 0), (10, 10, 0), (10, 11, 0), (10, 12, 0), (10, 13, 0), (10, 14, 0), (10, 15, 0),
(11, 1, 0), (11, 2, 0), (11, 3, 0), (11, 4, 0), (11, 5, 0), (11, 6, 0), (11, 7, 0), (11, 8, 0), (11, 9, 0), (11, 10, 0), (11, 11, 0), (11, 12, 0), (11, 13, 0), (11, 14, 0), (11, 15, 0),
(12, 1, 0), (12, 2, 0), (12, 3, 0), (12, 4, 0), (12, 5, 0), (12, 6, 0), (12, 7, 0), (12, 8, 0), (12, 9, 0), (12, 10, 0), (12, 11, 0), (12, 12, 0), (12, 13, 0), (12, 14, 0), (12, 15, 0),
(13, 1, 0), (13, 2, 0), (13, 3, 0), (13, 4, 0), (13, 5, 0), (13, 6, 0), (13, 7, 0), (13, 8, 0), (13, 9, 0), (13, 10, 0), (13, 11, 0), (13, 12, 0), (13, 13, 0), (13, 14, 0), (13, 15, 0),
(14, 1, 0), (14, 2, 0), (14, 3, 0), (14, 4, 0), (14, 5, 0), (14, 6, 0), (14, 7, 0), (14, 8, 0), (14, 9, 0), (14, 10, 0), (14, 11, 0), (14, 12, 0), (14, 13, 0), (14, 14, 0), (14, 15, 0),
(15, 1, 0), (15, 2, 0), (15, 3, 0), (15, 4, 0), (15, 5, 0), (15, 6, 0), (15, 7, 0), (15, 8, 0), (15, 9, 0), (15, 10, 0), (15, 11, 0), (15, 12, 0), (15, 13, 0), (15, 14, 0), (15, 15, 0);



insert into Authors (ItemID, SteamID)
values (1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
       (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
       (11, 11), (12, 12), (13,13), (14,14), (15,15);


       