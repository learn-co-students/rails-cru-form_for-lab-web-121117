class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
    render 'form'
  end

  def edit
    @artist = Artist.find(params[:id])
    render 'form'
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def create
    @artist = Artist.create(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end
end
