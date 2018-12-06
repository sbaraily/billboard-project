class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_song, only: [:show, :update, :edit, :destroy]

  def index
    @songs = @artist.songs
  end

  def new
    
    @song = @artist.songs.new
    render partial: "form"
    
  end

  def show
  end

  def create
    @song = @artist.songs.create(song_params)
    if @song.save
      redirect_to [@artist, @song]
    else
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @song.update(song_params)
      redirect_to artist_songs_path
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to root_path
  end

  private

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def song_params
    params.require(:song).permit(:title, :hit)
  end

  def set_song
    @song = Song.find(params[:id])
  end
  
end
