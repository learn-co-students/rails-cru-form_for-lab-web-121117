class GenresController < ApplicationController
  def new
    @genre = Genre.new
    render 'form'
  end

  def edit
    @genre = Genre.find(params[:id])
    render 'form'
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def create
    @genre = Genre.create(params.require(:genre).permit(:name))
    redirect_to genre_path(@genre)
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(params.require(:genre).permit(:name))
    redirect_to genre_path(@genre)
  end
end
