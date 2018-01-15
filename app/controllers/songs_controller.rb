class SongsController < ApplicationController

    def index
      @songs = Song.all
    end

    def new
      @song = Song.new
    end

    def create
      @song = Song.create(name: params[:song][:name])
      redirect_to @song
    end

    def show
      @song = Song.find(params[:id])
      @artist = Artist.find_or_create_by(@song.artist_id)
      @genre = Genre.find_or_create_by(@song.genre_id)
    end

    def edit
      @song = Song.find(params[:id])
      @artist = Artist.find_or_create_by(@song.artist_id)
      @genre = Genre.find_or_create_by(@song.genre_id)
    end

    def update
      @song = Song.find(params[:id])
      @song.update(name: params[:song][:name])
      redirect_to @song
    end



end
