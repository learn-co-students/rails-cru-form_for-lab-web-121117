class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def song_artist
    my_artist =  self.artist
    my_artist.name
  end

  def song_genre
    my_genre =  self.genre
    my_genre.name
  end

end
