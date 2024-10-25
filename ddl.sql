/*
Table for userinfo*/
CREATE TABLE userinfo(
	userID	INTEGER	PRIMARY KEY,
    fName	VARCHAR(50)	NOT NULL,
    lName	VARCHAR(50) NOT NULL
);

/*
Table for music artist*/
CREATE TABLE musicArtist(
	artistID	INTEGER PRIMARY KEY,
    fName		VARCHAR(60) NOT NULL,
    lName		VARCHAR(60) NOT NULL
);

/*
Table for all music CDs*/
CREATE TABLE music(
	musicID 		INTEGER PRIMARY KEY,
    userID			INTEGER,
    artistID		INTEGER,
    Album			VARCHAR(50),
    songTitle		VARCHAR(50),
    musicYear		INTEGER,
    musicLocation	VARCHAR(60),
	FOREIGN KEY (userID) REFERENCES userinfo(userID) ON DELETE SET NULL,
    FOREIGN KEY (artistID) REFERENCES musicArtist(artistID) ON DELETE SET NULL
);

