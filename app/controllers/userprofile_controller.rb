class UserprofileController < ApplicationController

  def index

  end

  def show
    @user = current_user
    @posts = @user.posts
    @count = @user.posts.count
    @posts = @posts.reorder("updated_at DESC").paginate(:page => params[:page], :per_page => 5)

    # binding.pry
    #controller for the user show page and the amount of posts each user created
  end

  def edit
  end
end
