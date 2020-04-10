class AppearancesController < ApplicationController
  def index
    @appearances = Appearance.all
  end

  def new
    @appearance = Appearance.new
    @episodes = Episode.all
    @guests = Guest.all
  end

  def show
  end

  def edit
  end

  def create
    @episodes = Episode.all
    @guests = Guest.all
    @appearance = Appearance.new(appearance_params)
    if @appearance.valid?
      @appearance.save
      redirect_to episode_path(@appearance.episode)
    else
      render :new
    end
  end

  private

  def appearance_params
    params.require(:appearance).permit(:rating, :episode_id, :guest_id)
  end
end
