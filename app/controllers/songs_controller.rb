class SongsController < ApplicationController
  before_action :set_song, only: [:show, :update, :edit, :destroy]

  def index
    @song = Song.all
  end

  def new
    @song = Song.new
    render partial: "form"
  end

  def show
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to top_artist_songs_path
    else
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @song.update(song_params)
      redirect_to top_artist_songs_path
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to root_path
  end

  private

  def song_params
    params.require(:song).permit(:title, :artist_id, :hit)
  end

  def set_song
    @song = Song.find(params[:id])
  end
  
end
