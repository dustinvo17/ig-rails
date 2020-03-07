class DiscoversController < ApplicationController
    def index
        @users = User.all
        @posts = Post.all
        puts @user.to_json
        
    end
end
