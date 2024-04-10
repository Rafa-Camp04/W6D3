class UsersController < ApplicationController

    def index
        # @users = User.all
        render plain:"index_action"
    end

    def create
        render json: params
    end

    def show
        render json: params
    end
end