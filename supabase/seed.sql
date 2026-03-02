-- Vinyl Vault: Seed Data
-- Run with: supabase db reset (applies migrations then this file)
--
-- Covers a representative slice of the collection across all genres.
-- Artwork in src/assets/images/ corresponds to these records.

-- Artists
INSERT INTO artists (name) VALUES
  ('Aphex Twin'),
  ('Basement Jaxx'),
  ('Depeche Mode'),
  ('Kruder & Dorfmeister'),
  ('Leftfield'),
  ('Plump DJs'),
  ('Stanton Warriors'),
  ('DJ Shadow'),
  ('Massive Attack'),
  ('Mos Def'),
  ('RJD2'),
  ('Gang Starr'),
  ('Rakim'),
  ('Art Blakey & The Jazz Messengers'),
  ('Dexter Gordon'),
  ('Grover Washington Jr.'),
  ('Miles Davis'),
  ('Nina Simone'),
  ('The Beatles'),
  ('Bob Dylan'),
  ('Eminem'),
  ('MGMT'),
  ('Blondie'),
  ('The Rolling Stones'),
  ('Suicide'),
  ('Pink Floyd'),
  ('Bar-Kays'),
  ('George Benson'),
  ('Funkadelic'),
  ('The Stylistics'),
  ('The Dells'),
  ('Buena Vista Social Club'),
  ('Elis Regina & Tom Jobim'),
  ('Kassav'''),
  ('King Sunny Ade'),
  ('Mercedes Sosa'),
  ('Marta Gomez'),
  ('Masato Nakamura'),
  ('Salman Ahmad')
ON CONFLICT DO NOTHING;


-- Dance
INSERT INTO albums (name, artist_name, artist_id, release_year, rating, type, quality, record_label) VALUES
  ('Selected Ambient Works 85-92', 'Aphex Twin',
    (SELECT id FROM artists WHERE name = 'Aphex Twin'),
    '1992', '5', 'LP', 'VG', 'Apollo'),
  ('Remedy', 'Basement Jaxx',
    (SELECT id FROM artists WHERE name = 'Basement Jaxx'),
    '1999', '4', 'LP', 'VG', 'XL Recordings'),
  ('Violator', 'Depeche Mode',
    (SELECT id FROM artists WHERE name = 'Depeche Mode'),
    '1990', '5', 'LP', 'NM', 'Mute'),
  ('The K&D Sessions', 'Kruder & Dorfmeister',
    (SELECT id FROM artists WHERE name = 'Kruder & Dorfmeister'),
    '1998', '5', 'LP', 'VG', '!K7'),
  ('Leftism', 'Leftfield',
    (SELECT id FROM artists WHERE name = 'Leftfield'),
    '1995', '4', 'LP', 'VG', 'Hard Hands'),
  ('A Plump Night Out', 'Plump DJs',
    (SELECT id FROM artists WHERE name = 'Plump DJs'),
    '2003', '3', 'LP', 'VG', 'Finger Lickin'''),
  ('The Stanton Sessions', 'Stanton Warriors',
    (SELECT id FROM artists WHERE name = 'Stanton Warriors'),
    '2001', '4', 'LP', 'VG', 'XL Recordings');

-- Hip Hop
INSERT INTO albums (name, artist_name, artist_id, release_year, rating, type, quality, record_label) VALUES
  ('Endtroducing.....', 'DJ Shadow',
    (SELECT id FROM artists WHERE name = 'DJ Shadow'),
    '1996', '5', 'LP', 'NM', 'Mo'' Wax'),
  ('Mezzanine', 'Massive Attack',
    (SELECT id FROM artists WHERE name = 'Massive Attack'),
    '1998', '5', 'LP', 'VG', 'Virgin'),
  ('Black on Both Sides', 'Mos Def',
    (SELECT id FROM artists WHERE name = 'Mos Def'),
    '1999', '4', 'LP', 'VG', 'Rawkus'),
  ('Deadringer', 'RJD2',
    (SELECT id FROM artists WHERE name = 'RJD2'),
    '2002', '4', 'LP', 'VG', 'Definitive Jux'),
  ('Full Clip: A Decade of Gang Starr', 'Gang Starr',
    (SELECT id FROM artists WHERE name = 'Gang Starr'),
    '1999', '5', 'SINGLE', 'VG', 'Virgin');

-- Jazz
INSERT INTO albums (name, artist_name, artist_id, release_year, rating, type, quality, record_label) VALUES
  ('Moanin''', 'Art Blakey & The Jazz Messengers',
    (SELECT id FROM artists WHERE name = 'Art Blakey & The Jazz Messengers'),
    '1959', '5', 'LP', 'G', 'Blue Note'),
  ('Go!', 'Dexter Gordon',
    (SELECT id FROM artists WHERE name = 'Dexter Gordon'),
    '1962', '4', 'LP', 'VG', 'Blue Note'),
  ('Winelight', 'Grover Washington Jr.',
    (SELECT id FROM artists WHERE name = 'Grover Washington Jr.'),
    '1980', '4', 'LP', 'VG', 'Elektra'),
  ('Kind of Blue', 'Miles Davis',
    (SELECT id FROM artists WHERE name = 'Miles Davis'),
    '1959', '5', 'LP', 'G', 'Columbia'),
  ('I Put a Spell on You', 'Nina Simone',
    (SELECT id FROM artists WHERE name = 'Nina Simone'),
    '1965', '5', 'LP', 'VG', 'Philips');

-- Rock
INSERT INTO albums (name, artist_name, artist_id, release_year, rating, type, quality, record_label) VALUES
  ('Abbey Road', 'The Beatles',
    (SELECT id FROM artists WHERE name = 'The Beatles'),
    '1969', '5', 'LP', 'G', 'Apple'),
  ('Desire', 'Bob Dylan',
    (SELECT id FROM artists WHERE name = 'Bob Dylan'),
    '1976', '4', 'LP', 'VG', 'Columbia'),
  ('Encore', 'Eminem',
    (SELECT id FROM artists WHERE name = 'Eminem'),
    '2004', '3', 'LP', 'NM', 'Aftermath'),
  ('Oracular Spectacular', 'MGMT',
    (SELECT id FROM artists WHERE name = 'MGMT'),
    '2007', '4', 'LP', 'NM', 'Columbia'),
  ('Parallel Lines', 'Blondie',
    (SELECT id FROM artists WHERE name = 'Blondie'),
    '1978', '5', 'LP', 'VG', 'Chrysalis'),
  ('Sticky Fingers', 'The Rolling Stones',
    (SELECT id FROM artists WHERE name = 'The Rolling Stones'),
    '1971', '5', 'LP', 'VG', 'Rolling Stones Records'),
  ('Suicide', 'Suicide',
    (SELECT id FROM artists WHERE name = 'Suicide'),
    '1977', '4', 'LP', 'VG', 'Red Star'),
  ('The Wall', 'Pink Floyd',
    (SELECT id FROM artists WHERE name = 'Pink Floyd'),
    '1979', '5', 'LP', 'VG', 'Harvest');

-- Soul & Funk
INSERT INTO albums (name, artist_name, artist_id, release_year, rating, type, quality, record_label) VALUES
  ('Too Hot to Stop', 'Bar-Kays',
    (SELECT id FROM artists WHERE name = 'Bar-Kays'),
    '1976', '4', 'LP', 'VG', 'Mercury'),
  ('Breezin''', 'George Benson',
    (SELECT id FROM artists WHERE name = 'George Benson'),
    '1976', '4', 'LP', 'VG', 'Warner Bros.'),
  ('Maggot Brain', 'Funkadelic',
    (SELECT id FROM artists WHERE name = 'Funkadelic'),
    '1971', '5', 'LP', 'G', 'Westbound'),
  ('The Stylistics', 'The Stylistics',
    (SELECT id FROM artists WHERE name = 'The Stylistics'),
    '1971', '4', 'LP', 'VG', 'Avco');

-- World
INSERT INTO albums (name, artist_name, artist_id, release_year, rating, type, quality, record_label) VALUES
  ('Buena Vista Social Club', 'Buena Vista Social Club',
    (SELECT id FROM artists WHERE name = 'Buena Vista Social Club'),
    '1997', '5', 'LP', 'NM', 'World Circuit'),
  ('Elis & Tom', 'Elis Regina & Tom Jobim',
    (SELECT id FROM artists WHERE name = 'Elis Regina & Tom Jobim'),
    '1974', '5', 'LP', 'VG', 'Philips'),
  ('Majestik Zouk', 'Kassav''',
    (SELECT id FROM artists WHERE name = 'Kassav'''),
    '1989', '4', 'LP', 'VG', 'CBS'),
  ('Juju Music', 'King Sunny Ade',
    (SELECT id FROM artists WHERE name = 'King Sunny Ade'),
    '1982', '5', 'LP', 'VG', 'Mango'),
  ('Gracias a la Vida', 'Mercedes Sosa',
    (SELECT id FROM artists WHERE name = 'Mercedes Sosa'),
    '1971', '4', 'LP', 'G', 'Philips');


-- Album <-> Genre associations
INSERT INTO albums_genres (album_id, genre_id) VALUES
  ((SELECT id FROM albums WHERE name = 'Selected Ambient Works 85-92'), (SELECT id FROM genres WHERE name = 'Dance')),
  ((SELECT id FROM albums WHERE name = 'Remedy'), (SELECT id FROM genres WHERE name = 'Dance')),
  ((SELECT id FROM albums WHERE name = 'Violator'), (SELECT id FROM genres WHERE name = 'Dance')),
  ((SELECT id FROM albums WHERE name = 'The K&D Sessions'), (SELECT id FROM genres WHERE name = 'Dance')),
  ((SELECT id FROM albums WHERE name = 'Leftism'), (SELECT id FROM genres WHERE name = 'Dance')),
  ((SELECT id FROM albums WHERE name = 'A Plump Night Out'), (SELECT id FROM genres WHERE name = 'Dance')),
  ((SELECT id FROM albums WHERE name = 'The Stanton Sessions'), (SELECT id FROM genres WHERE name = 'Dance')),
  ((SELECT id FROM albums WHERE name = 'Endtroducing.....'), (SELECT id FROM genres WHERE name = 'Hip Hop')),
  ((SELECT id FROM albums WHERE name = 'Mezzanine'), (SELECT id FROM genres WHERE name = 'Hip Hop')),
  ((SELECT id FROM albums WHERE name = 'Black on Both Sides'), (SELECT id FROM genres WHERE name = 'Hip Hop')),
  ((SELECT id FROM albums WHERE name = 'Deadringer'), (SELECT id FROM genres WHERE name = 'Hip Hop')),
  ((SELECT id FROM albums WHERE name = 'Full Clip: A Decade of Gang Starr'), (SELECT id FROM genres WHERE name = 'Hip Hop')),
  ((SELECT id FROM albums WHERE name = 'Moanin'''), (SELECT id FROM genres WHERE name = 'Jazz')),
  ((SELECT id FROM albums WHERE name = 'Go!'), (SELECT id FROM genres WHERE name = 'Jazz')),
  ((SELECT id FROM albums WHERE name = 'Winelight'), (SELECT id FROM genres WHERE name = 'Jazz')),
  ((SELECT id FROM albums WHERE name = 'Kind of Blue'), (SELECT id FROM genres WHERE name = 'Jazz')),
  ((SELECT id FROM albums WHERE name = 'I Put a Spell on You'), (SELECT id FROM genres WHERE name = 'Jazz')),
  ((SELECT id FROM albums WHERE name = 'Abbey Road'), (SELECT id FROM genres WHERE name = 'Rock')),
  ((SELECT id FROM albums WHERE name = 'Desire'), (SELECT id FROM genres WHERE name = 'Rock')),
  ((SELECT id FROM albums WHERE name = 'Encore'), (SELECT id FROM genres WHERE name = 'Rock')),
  ((SELECT id FROM albums WHERE name = 'Oracular Spectacular'), (SELECT id FROM genres WHERE name = 'Rock')),
  ((SELECT id FROM albums WHERE name = 'Parallel Lines'), (SELECT id FROM genres WHERE name = 'Rock')),
  ((SELECT id FROM albums WHERE name = 'Sticky Fingers'), (SELECT id FROM genres WHERE name = 'Rock')),
  ((SELECT id FROM albums WHERE name = 'Suicide'), (SELECT id FROM genres WHERE name = 'Rock')),
  ((SELECT id FROM albums WHERE name = 'The Wall'), (SELECT id FROM genres WHERE name = 'Rock')),
  ((SELECT id FROM albums WHERE name = 'Too Hot to Stop'), (SELECT id FROM genres WHERE name = 'Soul & Funk')),
  ((SELECT id FROM albums WHERE name = 'Breezin'''), (SELECT id FROM genres WHERE name = 'Soul & Funk')),
  ((SELECT id FROM albums WHERE name = 'Maggot Brain'), (SELECT id FROM genres WHERE name = 'Soul & Funk')),
  ((SELECT id FROM albums WHERE name = 'The Stylistics'), (SELECT id FROM genres WHERE name = 'Soul & Funk')),
  ((SELECT id FROM albums WHERE name = 'Buena Vista Social Club'), (SELECT id FROM genres WHERE name = 'World')),
  ((SELECT id FROM albums WHERE name = 'Elis & Tom'), (SELECT id FROM genres WHERE name = 'World')),
  ((SELECT id FROM albums WHERE name = 'Majestik Zouk'), (SELECT id FROM genres WHERE name = 'World')),
  ((SELECT id FROM albums WHERE name = 'Juju Music'), (SELECT id FROM genres WHERE name = 'World')),
  ((SELECT id FROM albums WHERE name = 'Gracias a la Vida'), (SELECT id FROM genres WHERE name = 'World'));


-- Sample songs (Kind of Blue — showing the full A/B side pattern)
INSERT INTO songs (album_id, name, track_number, side, rating) VALUES
  ((SELECT id FROM albums WHERE name = 'Kind of Blue'), 'So What', 1, 'A', 5),
  ((SELECT id FROM albums WHERE name = 'Kind of Blue'), 'Freddie Freeloader', 2, 'A', 5),
  ((SELECT id FROM albums WHERE name = 'Kind of Blue'), 'Blue in Green', 3, 'A', 4),
  ((SELECT id FROM albums WHERE name = 'Kind of Blue'), 'All Blues', 1, 'B', 5),
  ((SELECT id FROM albums WHERE name = 'Kind of Blue'), 'Flamenco Sketches', 2, 'B', 4);

-- Sample songs (Sticky Fingers)
INSERT INTO songs (album_id, name, track_number, side, rating) VALUES
  ((SELECT id FROM albums WHERE name = 'Sticky Fingers'), 'Brown Sugar', 1, 'A', 5),
  ((SELECT id FROM albums WHERE name = 'Sticky Fingers'), 'Sway', 2, 'A', 3),
  ((SELECT id FROM albums WHERE name = 'Sticky Fingers'), 'Wild Horses', 3, 'A', 5),
  ((SELECT id FROM albums WHERE name = 'Sticky Fingers'), 'Can''t You Hear Me Knocking', 4, 'A', 4),
  ((SELECT id FROM albums WHERE name = 'Sticky Fingers'), 'You Gotta Move', 5, 'A', 3),
  ((SELECT id FROM albums WHERE name = 'Sticky Fingers'), 'Bitch', 1, 'B', 3),
  ((SELECT id FROM albums WHERE name = 'Sticky Fingers'), 'I Got the Blues', 2, 'B', 4),
  ((SELECT id FROM albums WHERE name = 'Sticky Fingers'), 'Sister Morphine', 3, 'B', 4),
  ((SELECT id FROM albums WHERE name = 'Sticky Fingers'), 'Dead Flowers', 4, 'B', 4),
  ((SELECT id FROM albums WHERE name = 'Sticky Fingers'), 'Moonlight Mile', 5, 'B', 5);

-- Sample songs (Maggot Brain)
INSERT INTO songs (album_id, name, track_number, side, rating) VALUES
  ((SELECT id FROM albums WHERE name = 'Maggot Brain'), 'Maggot Brain', 1, 'A', 5),
  ((SELECT id FROM albums WHERE name = 'Maggot Brain'), 'Can You Get to That', 2, 'A', 4),
  ((SELECT id FROM albums WHERE name = 'Maggot Brain'), 'Hit It and Quit It', 3, 'A', 4),
  ((SELECT id FROM albums WHERE name = 'Maggot Brain'), 'You and Your Folks, Me and My Folks', 4, 'A', 3),
  ((SELECT id FROM albums WHERE name = 'Maggot Brain'), 'Super Stupid', 1, 'B', 5),
  ((SELECT id FROM albums WHERE name = 'Maggot Brain'), 'Back in Our Minds', 2, 'B', 3),
  ((SELECT id FROM albums WHERE name = 'Maggot Brain'), 'Wars of Armageddon', 3, 'B', 4);
