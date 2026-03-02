-- Vinyl Vault: Enriched Schema Migration
-- Extends the existing albums/artists tables with richer metadata,
-- adds songs, genres, and junction tables for full granularity.

-- Enums
CREATE TYPE album_type AS ENUM ('EP', 'LP', 'SINGLE');
CREATE TYPE vinyl_quality AS ENUM ('M', 'NM', 'VG', 'G', 'F', 'P');
CREATE TYPE vinyl_side AS ENUM ('A', 'B');

-- Enrich existing albums table
ALTER TABLE albums
  ADD COLUMN IF NOT EXISTS record_label text,
  ADD COLUMN IF NOT EXISTS type album_type,
  ADD COLUMN IF NOT EXISTS quality vinyl_quality,
  ADD COLUMN IF NOT EXISTS side vinyl_side;

-- Songs
CREATE TABLE IF NOT EXISTS songs (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  album_id uuid NOT NULL REFERENCES albums(id) ON DELETE CASCADE,
  name text NOT NULL,
  track_number integer NOT NULL,
  side vinyl_side,
  rating integer CHECK (rating >= 0 AND rating <= 5),
  created_at timestamptz DEFAULT now(),

  UNIQUE (album_id, track_number, side)
);

-- Genres
CREATE TABLE IF NOT EXISTS genres (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text UNIQUE NOT NULL
);

-- Album <-> Genre junction
CREATE TABLE IF NOT EXISTS albums_genres (
  album_id uuid NOT NULL REFERENCES albums(id) ON DELETE CASCADE,
  genre_id uuid NOT NULL REFERENCES genres(id) ON DELETE CASCADE,
  PRIMARY KEY (album_id, genre_id)
);

-- Song <-> Genre junction
CREATE TABLE IF NOT EXISTS songs_genres (
  song_id uuid NOT NULL REFERENCES songs(id) ON DELETE CASCADE,
  genre_id uuid NOT NULL REFERENCES genres(id) ON DELETE CASCADE,
  PRIMARY KEY (song_id, genre_id)
);

-- Album <-> Feature Artist junction
CREATE TABLE IF NOT EXISTS albums_feature_artists (
  album_id uuid NOT NULL REFERENCES albums(id) ON DELETE CASCADE,
  artist_id uuid NOT NULL REFERENCES artists(id) ON DELETE CASCADE,
  PRIMARY KEY (album_id, artist_id)
);

-- Song <-> Feature Artist junction
CREATE TABLE IF NOT EXISTS songs_feature_artists (
  song_id uuid NOT NULL REFERENCES songs(id) ON DELETE CASCADE,
  artist_id uuid NOT NULL REFERENCES artists(id) ON DELETE CASCADE,
  PRIMARY KEY (song_id, artist_id)
);

-- Indexes for common queries
CREATE INDEX IF NOT EXISTS idx_songs_album_id ON songs(album_id);
CREATE INDEX IF NOT EXISTS idx_albums_genres_genre_id ON albums_genres(genre_id);
CREATE INDEX IF NOT EXISTS idx_songs_genres_genre_id ON songs_genres(genre_id);
CREATE INDEX IF NOT EXISTS idx_albums_feature_artists_artist_id ON albums_feature_artists(artist_id);
CREATE INDEX IF NOT EXISTS idx_songs_feature_artists_artist_id ON songs_feature_artists(artist_id);

-- Seed genres
INSERT INTO genres (name) VALUES
  ('Soul & Funk'),
  ('Jazz'),
  ('Rock'),
  ('Hip Hop'),
  ('Dance'),
  ('World')
ON CONFLICT (name) DO NOTHING;
