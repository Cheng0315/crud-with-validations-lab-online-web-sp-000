class SongsController < ApplicationController

  def index
<<<<<<< HEAD
    @songs = Song.all
=======
>>>>>>> 08f2c7312a000bf018652026a26901460e6897de
  end

  def new
    @song = Song.new
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(post_params(:title, :released, :release_year, :artist_name, :genre))
    if @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  def update
    @song = Song.find(params[:id])

    if @song.update(post_params(:title, :released, :release_year, :artist_name, :genre))
      redirect_to song_path(@song)
    else
      render :edit
    end
  end

<<<<<<< HEAD
  def destroy
    Song.find(params[:id]).destroy
    redirect_to songs_path
=======
  def delete
>>>>>>> 08f2c7312a000bf018652026a26901460e6897de
  end

  private

  def post_params(*args)
    params.require(:song).permit(*args)
  end
end