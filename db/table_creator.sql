DROP TABLE competitors;
DROP TABLE nations;
DROP TABLE events;

CREATE TABLE nations (
  id serial4 primary key,
  name VARCHAR(255)
);

CREATE TABLE events (
  id serial4 primary key,
  sport VARCHAR(255),
  name VARCHAR(255),
  gold VARCHAR(255),
  Silver VARCHAR(255),
  bronze VARCHAR(255)
);

CREATE TABLE competitors (
  id serial4 primary key,
  name VARCHAR(255),
  nation VARCHAR(255),
  sex VARCHAR(255)
);



INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (1, 'Archery','Shooty Arrow a long way',1,2, 3);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (2, 'Athletics','Run quite fast for 400 metres',3,4,5);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (3, 'Badminton','Hit a feathery thing back and forth',5,6,7);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (4, 'Basketball','Bounce a ball then throw it',8,9,10);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (5, 'Beach volleyball','Run around in your swimmers',11,12,13);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (6, 'Boxing','Punch someone hard',14,15,16);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (7, 'Canoe Slalom','Go down some water viraging',16,17,18);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (8, 'Canoe Sprint','Go down some water really fast',18,19,20);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (9, 'Cycling BMX','Go downhill on a kids bike',20,21,22);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (10, 'Cycling MTB','Go downhill fast over bumps', 23,24,25);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (11, 'Cycling Road','Cycle quickly on the road',26,27,28);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (12, 'Cycling Track','Go round and round on a bike',29,30,1);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (13, 'Diving','Jump into the water without belly flopping',2,3,4);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (14, 'Equestrian Dressage','Trot up and down on a horse',5,6,7);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (15, 'Equestrian Eventing','Somethiong to do with horses',8,9,10);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (16, 'Equestrian Jumping','Letting the horse work and you taking the glory',11,12,13);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (17, 'Fencing','Poke someone with a pointy stick',14,15,16);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (18, 'Football','Kick a ball up and down',17,18,19);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (19, 'Golf','Hit a small ball a long way',20,21,22);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (20, 'Gymnastics Artistic','Prance around artisitically',23,24,25);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (21, 'Gymnastics Rythmic','prance around rythmically',25,26,27);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (22, 'Handball','Hit the ball with your hand',26,27,28);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (23, 'Hockey','Hit a ball with a stick',28,29,20);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (24, 'Judo','Fight in your pyjamas',29.30,13);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (25, 'Modern Pentathlon','Do 7 things well',27,28,29);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (26, 'Rowing','Row with a small person shouting at you',1,4,7);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (27, 'Rugby','Run around with an egg shaped ball',2,5,8);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (28, 'Sailing','Get in a boat and open the Pims',3,6,9);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (29, 'Shooting','Shoot something ',4,7,10);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (30, 'Swimming','Flap about in the pool and stay afloat',5,8,11);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (31, 'Synchronised Swimming','Swim with funny nose pegs',6,9,12);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (32, 'Table Tennis','Ping Pong',7,10,13);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (33, 'Tennis','Big version of Ping Pong',8,11,14);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (34, 'Trampoline','Bouncing',9,12,15);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (35, 'Triathlon','Do three things well',10,13,16);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (36, 'Volleyball','Not so exciting as the beach version',11,14,17);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (37, 'Water Polo','Bashing a ball over the net in the water.', 12,15,18);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (38, 'Weightlifting','Holding something heavy above your head', 13,16,19);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (39, 'Wrestling Freestyle','WWF',14,17,20);
INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (40, 'Wrestling - Greco Roman','Fighting like Greek Romans',15,18,21);

INSERT INTO nations (id,name)  VALUES (1, 'Greece');
INSERT INTO nations (id,name)  VALUES (2, 'Afghanistan');
INSERT INTO nations (id,name)  VALUES (3, 'South Africa');
INSERT INTO nations (id,name)  VALUES (4, 'Albania');
INSERT INTO nations (id,name)  VALUES (5, 'Germany');
INSERT INTO nations (id,name)  VALUES (6, 'Andorra');
INSERT INTO nations (id,name)  VALUES (7, 'Antigua and Barbuda');
INSERT INTO nations (id,name)  VALUES (8, 'Saudi Arabia');
INSERT INTO nations (id,name)  VALUES (9, 'Algeria');
INSERT INTO nations (id,name)  VALUES (10, 'Argentina');
INSERT INTO nations (id,name)  VALUES (11, 'Armenia');
INSERT INTO nations (id,name)  VALUES (12, 'Aruba');
INSERT INTO nations (id,name)  VALUES (13, 'Independant Olympic Athletes');
INSERT INTO nations (id,name)  VALUES (14, 'Australia');
INSERT INTO nations (id,name)  VALUES (15, 'Austria');
INSERT INTO nations (id,name)  VALUES (16, 'Azerbaijan');
INSERT INTO nations (id,name)  VALUES (17, 'Bahamas');
INSERT INTO nations (id,name)  VALUES (18, 'Bangladesh');
INSERT INTO nations (id,name)  VALUES (19, 'Barbados');
INSERT INTO nations (id,name)  VALUES (20, 'Bahrain');
INSERT INTO nations (id,name)  VALUES (21, 'Belarus');
INSERT INTO nations (id,name)  VALUES (22, 'Belgium');
INSERT INTO nations (id,name)  VALUES (23, 'Belize');
INSERT INTO nations (id,name)  VALUES (24, 'Benin');
INSERT INTO nations (id,name)  VALUES (25, 'Bermuda');
INSERT INTO nations (id,name)  VALUES (26, 'Bolivia');
INSERT INTO nations (id,name)  VALUES (27, 'Bosnia and Herzegovina');
INSERT INTO nations (id,name)  VALUES (28, 'Botswana');
INSERT INTO nations (id,name)  VALUES (29, 'Brunei Darussalam');
INSERT INTO nations (id,name)  VALUES (30, 'Bulgaria');
INSERT INTO nations (id,name)  VALUES (31, 'Burkina Faso');
INSERT INTO nations (id,name)  VALUES (32, 'Burundi');
INSERT INTO nations (id,name)  VALUES (33, 'Bhutan');
INSERT INTO nations (id,name)  VALUES (34, 'Cape Verde');
INSERT INTO nations (id,name)  VALUES (35, 'Cameroon');
INSERT INTO nations (id,name)  VALUES (36, 'Cambodia');
INSERT INTO nations (id,name)  VALUES (37, 'Canada');
INSERT INTO nations (id,name)  VALUES (38, 'Qatar');
INSERT INTO nations (id,name)  VALUES (39, 'Kazakhstan');
INSERT INTO nations (id,name)  VALUES (40, 'Cayman Islands');
INSERT INTO nations (id,name)  VALUES (41, 'Central African Republic');
INSERT INTO nations (id,name)  VALUES (42, 'Chad');
INSERT INTO nations (id,name)  VALUES (43, 'Chile');
INSERT INTO nations (id,name)  VALUES (44, 'Great Britain');
INSERT INTO nations (id,name)  VALUES (45, 'USA');
INSERT INTO nations (id,name)  VALUES (46, 'Brazil');
INSERT INTO competitors (id,name,nation,sex)  VALUES (1, 'Bradley Wiggins', 44,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (2, 'Andy Murray',44,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (3, 'Mark Cavendish',44,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (4, 'Max Whitlock',44,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (5, 'Joanna Rowsell',44,'F');
INSERT INTO competitors (id,name,nation,sex)  VALUES (6, 'Justin Rose',44,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (7, 'Laura Muir', 44,'F');
INSERT INTO competitors (id,name,nation,sex)  VALUES (8, 'Venus Williams', 45,'F');
INSERT INTO competitors (id,name,nation,sex)  VALUES (9, 'Justin Gatlin',45,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (10, 'Michael Phelps',45,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (11, 'Serena Williams',45,'F');
INSERT INTO competitors (id,name,nation,sex)  VALUES (12, 'Hope Solo',45,'F');
INSERT INTO competitors (id,name,nation,sex)  VALUES (13, 'Tyson Gay',45,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (14, 'Bubba Watson', 45,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (15, 'Neymar', 46,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (16, 'Diego Hypolito',46,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (17, 'Flavia Saraiva',46,'F');
INSERT INTO competitors (id,name,nation,sex)  VALUES (18, 'Giovanna Pedroso',46,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (19, 'Jade Barbosa',46,'F');
INSERT INTO competitors (id,name,nation,sex)  VALUES (20, 'Sheila Castro',46,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (21, 'Anna Mears', 14,'F');
INSERT INTO competitors (id,name,nation,sex)  VALUES (22, 'Michelle Jenneke', 14,'F');
INSERT INTO competitors (id,name,nation,sex)  VALUES (23, 'Morgan Mitchell',14,'F');
INSERT INTO competitors (id,name,nation,sex)  VALUES (24, 'Taliqua Clancy',14,'F');
INSERT INTO competitors (id,name,nation,sex)  VALUES (25, 'Lisa De Vanna',14,'F');
INSERT INTO competitors (id,name,nation,sex)  VALUES (26, 'Brandon Stark',14,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (27, 'Andrew Bogut',14,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (28, 'Patty Mills', 14,'F');
INSERT INTO competitors (id,name,nation,sex)  VALUES (29, 'Dane Bird-Smith',14,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (30, 'Liz Cambage', 14,'F');

-- INSERT INTO events (id, sport, name, gold, silver, bronze) VALUES (1, 'Archery','',1,2, 3);

-- SELECT * from nations;

-- SELECT name FROM competitors order by name;
-- select * from nations;
SELECT * FROM events;