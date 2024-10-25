SELECT * FROM userinfo;
SELECT * FROM musicArtist;
SELECT * FROM music;
/*
----------------------
All music and correlated users
*/
SELECT m.userID, m.musicID, m.songTitle, m.Album, u.lName, u.fName
FROM music m, userinfo u
where m.userID = u.userID;

/*
-----------------
All music and correlated artistIDs*/
SELECT a.artistID, m.musicID, m.Album, m.songTitle, m.musicYear, m.musicLocation
FROM  music m, musicArtist a
WHERE a.artistID = m.artistID;

/*
---------------------
Retrieve all music made by ke shi*/
SELECT a.artistID, m.musicID, m.Album, m.songTitle, m.musicYear, m.musicLocation
FROM music m, musicArtist a
WHERE m.artistID = a.artistID and a.fName = 'ke' and a.lName = 'shi';

/*
--------------------
artist with more than one song*/
SELECT a.artistID, a.fName, a.lName
FROM musicArtist a
JOIN (
	SELECT artistID
    FROM 	music
    GROUP BY artistID
    HAVING COUNT(DISTINCT musicID) > 1
) m ON a.artistID = m.artistID;

/*
--------------------
all users who listen to more than one artist*/
SELECT u.userID, u.fName, u.lName
FROM userinfo u
JOIN (
	SELECT userID
    FROM 	music
    GROUP BY userID
    HAVING COUNT(DISTINCT artistID) > 1
) m ON u.userID = m.userID;