class Api::SessionsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        @user = User.find_by_creadentials(
            params[:user][:username],
            params[:user][:password]    
        )

        if @user
            login(@user)
            render "api/users/show"
        else
            render json: ['invalid credentials'], status: 401
        end
    end

    def destroy
        @user = current_user
        if @user
            logout
            render {}
        else
            render json: ["Not signed in"], status: 404
        end
    end
end
