class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        puts params
        puts @user.to_json
    end
end