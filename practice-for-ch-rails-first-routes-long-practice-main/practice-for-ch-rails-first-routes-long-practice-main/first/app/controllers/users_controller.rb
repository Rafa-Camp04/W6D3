class UsersController < ApplicationController

    def index
        # render plain:"index_action"
        @users = User.all 
        render json: @users
    end

    def create
        user = User.new(params.require(:user).permit(:name, :email))

            if user.save
                render json: user
            else
                render json: user.errors.full_messages, status: 422
            end

        # replace the `user_attributes_here` with the actual attribute keys
    end

    def show
        render json: params
    end

    def update

        @user = User.find(params[:id])

        if @user.update(params.require(:user).permit(:name, :email))
            redirect_to user_url(@user)
        else
            render json: @user.errors.full_messages, status: 422
        end
    end

    def destroy

        @user = User.find(params[:id])
        @user.destroy
        # render json: @user
        redirect_to user_url
    end


end