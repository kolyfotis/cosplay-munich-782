class CosplaysController < ApplicationController
  before_action :set_cosplay, only: %i[show edit update destroy]

  def index
    @cosplays = Cosplay.all
  end

  def show; end

  def new
    @cosplay = Cosplay.new
  end

  def create
    @cosplay = Cosplay.new(cosplay_params)
    @cosplay.user = current_user
    if @cosplay.save
      redirect_to cosplay_path(@cosplay)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @cosplay.update(cosplay_params)
      redirect_to cosplay_path(@cosplay), notice: 'Your listing was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @cosplay.destroy
    redirect_to cosplays_path, notice: 'Your listing was successfully destroyed'
  end

  private

  def cosplay_params
    params.require(:cosplay).permit(:user_id, :price, :details, :photo, :title)
  end

  def set_cosplay
    @cosplay = Cosplay.find(params[:id])
  end
end
