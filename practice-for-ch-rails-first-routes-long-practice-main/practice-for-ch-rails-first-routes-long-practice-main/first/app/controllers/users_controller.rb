class UsersController < ApplicationController

    def index

        # @users = User.all

        render plain:"index_action"

    end


end