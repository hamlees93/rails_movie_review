class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @review = 
  end

  def create
    @movie = Movie.new(movie_params)

    # if @movie.valid?
      
    # end

    redirect_to @movie
  end

  def new
    @movie = Movie.new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)

    redirect_to @movie
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to movies_path
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :release_date, :genre, :runtime, :image)
  end
end
