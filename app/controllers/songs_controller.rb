class SongsController < ApplicationController

    def index
      @songs = Song.all
    end

    def new
      @song = Song.new
    end

    def create
      @song = Song.create(params.require(:song).permit(:name))
      redirect_to @song
    end

    def show
      @song = Song.find(params[:id])
      @artist = Artist.find_or_create_by(@song.artist_id)
      @genre = Genre.find_or_create_by(@song.genre_id)
    end

    def edit
      @song = Song.find(params[:id])
      # @all_artists = Artist.all
      @artist = Artist.find_or_create_by(@song.artist_id)
      # @all_genres = Genre.all
      @genre = Genre.find_or_create_by(@song.genre_id)
    end

    def update
      @song = Song.find(params[:id])
      @song.update(song_params(:name))
      redirect_to @song
    end

    private

    def song_params(*args)
      params.require(:song).permit(*args)
    end


end
