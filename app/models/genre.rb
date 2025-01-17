class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.srtists.count
  end

  def all_artist_names
    self.artists.map dp |artist|
    artist.name
  end
end
