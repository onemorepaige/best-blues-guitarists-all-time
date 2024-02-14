-- Create Guitarists Table
CREATE TABLE Guitarists (
    guitarist_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    birth_date DATE,
    birth_place VARCHAR(100),
    biography TEXT
);

-- Create Albums Table
CREATE TABLE Albums (
    album_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    release_year INT,
    guitarist_id INT,
    FOREIGN KEY (guitarist_id) REFERENCES Guitarists(guitarist_id)
);

-- Create Songs Table
CREATE TABLE Songs (
    song_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    duration TIME,
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);

-- Insert test data into Guitarists Table
INSERT INTO Guitarists (name, birth_date, birth_place, biography)
VALUES 
    ('B.B. King', '1925-09-16', 'Itta Bena, Mississippi', 'Riley B. King, known professionally as B.B. King, was an American blues singer-songwriter, guitarist, and record producer.'),
    ('Robert Johnson', '1911-05-08', 'Hazlehurst, Mississippi', 'Robert Leroy Johnson was an American blues singer-songwriter and musician.'),
    ('Stevie Ray Vaughan', '1954-10-03', 'Dallas, Texas', 'Stephen Ray Vaughan was an American musician, singer, songwriter, and record producer.');

-- Insert test data into Albums Table
INSERT INTO Albums (title, release_year, guitarist_id)
VALUES 
    ('Live at the Regal', 1965, 1),  -- B.B. King
    ('King of the Blues', 1992, 1),   -- B.B. King
    ('King of the Delta Blues Singers', 1961, 2),  -- Robert Johnson
    ('Texas Flood', 1983, 3),  -- Stevie Ray Vaughan

-- Insert test data into Songs Table
INSERT INTO Songs (title, duration, album_id)
VALUES 
    ('Every Day I Have the Blues', '00:02:39', 1),   -- Live at the Regal by B.B. King
    ('The Thrill Is Gone', '00:05:24', 2),           -- King of the Blues by B.B. King
    ('Cross Road Blues', '00:02:57', 3),             -- King of the Delta Blues Singers by Robert Johnson
    ('Pride and Joy', '00:03:40', 4);                -- Texas Flood by Stevie Ray Vaughan
