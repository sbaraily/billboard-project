class TopsController < ApplicationController
  before_action :set_top, only: [:show, :update, :edit, :destroy]

  def index
    @tops = Top.all
  end

  def show
  end

  def new
    @top = Top.new
    render partial: "form"
  end

  def create
    @top = Top.create(top_params)
    if @top.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @top.update(top_params)
      redirect_to @top
    else
      render :edit
    end
  end

  def destroy
    @top.destroy
    redirect_to root_path
  end

  private
    def top_params
      params.require(:top).permit(:name)
    end

    def set_top
      @top = Top.find(params[:id])
    end

end
