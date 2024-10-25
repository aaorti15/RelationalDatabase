INSERT INTO userinfo (userID, fName, lName)
VALUES
('1', 'John', 'Smith'),
('2', 'Bridgette', 'Smith'),
('3', 'Michael', 'Angelo'),
('4', 'Cole', 'Brown'),
('5', 'Jacob', 'Harris');

INSERT INTO musicArtist (artistID, fName, lName)
VALUES
('1', 'Ke', 'Shi'),
('2', 'Origami', 'Angel'),
('3', 'Tim', 'Cooks'),
('4', 'Klay', 'Thompson'),
('5', 'Justin', 'Bieber');

INSERT INTO music (musicID, userID, artistID, Album, songTitle, musicYear, musicLocation)
VALUES
('1', '3', '2', 'Somewhere City', 'Title Track', '2017', 'Los Angeles'),
('2', '1', '1', 'limbo', 'smth', '2015', 'Los Angeles'),
('3', '4', '3', 'under', 'always', '2022', 'Phoenix'),
('4', '3', '1', 'like i need', 'bandaids', '2012', 'Tuscon'),
('5', '1', '1', 'REAPER', 'skeleton', '2021', 'Miami'),
('6', '2', '5', 'beside', 'you', '2013', 'Albany'),
('7', '5', '4', 'drunk', 'dog', '2012', 'Seattle'),
('8', '2', '4', 'less of', 'gabriel', '2011', 'Dallas'),
('9', '3', '2', 'more', 'more', '2018', 'Fortworth');
