class UserprofileController < ApplicationController

  def index

  end

  def show
    @user = current_user
    @posts = @user.posts
    @count = @user.posts.count
    # binding.pry
  end

  def edit
  end
end
