class UsersController < ApplicationController

    def index
        # render plain:"index_action"
        @users = User.all 
        render json: @users
    end

    def create
        user = User.new(user_params)

            if user.save
                render json: user
            else
                render json: user.errors.full_messages, status: 422
            end

        # replace the `user_attributes_here` with the actual attribute keys
    end

    def show
        render json: User.find(params[:id])
    end

    def update

        @user = User.find(params[:id])

        if @user.update(user_params)
            redirect_to user_url(@user)
        else
            render json: @user.errors.full_messages, status: 422
        end
    end

    def destroy

        @user = User.find(params[:id])
        @user.destroy
        render json: @user
        # redirect_to users_url
    end

    def user_params 
        params.require(:user).permit(:username)
    end

end