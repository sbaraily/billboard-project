class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :update, :edit, :destroy]
 
  def index
    @artist = Artist.all
  end

  def new
    @artist = Artist.new
    render partial: "form"
  end

  def show
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to top_artists_path
    else
      render :new
    end
  end

  def edit 
    render partial: "form"
  end

  def update
    if @artist.update(artist_params)
      redirect_to top_artists_path
    else
      render :edit
    end
  end

  def destroy
    @artist.destroy
    redirect_to top_artists_path
  end


  private
    def artist_params
      params.require(:artist).permit(:name)
    end

    def set_artist
      @artist = Artist.find(params[:id])
    end



end
