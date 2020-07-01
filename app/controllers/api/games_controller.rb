class Api::GamesController < ApplicationController
   
    def show
        @game = Game.with_attached_screenshots.find_by(id: params[:id])

        if @game 
        render :show
        else
        render json: ['Game not found'], status: 404
        end
    end
end
