class SongsController < ApplicationController
  
  def index
    @songs = Song.all
  end
  
  def new
    @song = Song.new
  end

  def show
    @song = Song.find_by(params[:id])
  end

  def create
    @song = Song.find_by(params[:id])
    if @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  def edit
    @song = Song.find_by(params[:id])
  end

  def update
    @song = Song.find_by(params[:id])
    if @song.update
      redirect_to song_path(@song)
    else
      render :edit
    end
  end

  def destroy
    Song.find_by(params[:id]).destroy
    redirect_to songs_path
  end
end
