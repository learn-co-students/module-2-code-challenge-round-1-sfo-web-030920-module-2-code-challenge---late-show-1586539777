class AppearancesController < ApplicationController

    def new
        @appear = Appearance.new()
    end

    def create
        @appear = Appearance.create(appear_param)
        @appear.save
        redirect_to episodes_path(@appear.episode_id)
    end

    private
    def appear_param
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end

end
