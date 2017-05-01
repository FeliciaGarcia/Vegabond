class UserprofileController < ApplicationController

  def index

  end

  def show
    @user = current_user
    @posts = @user.posts
    @count = @user.posts.count
    @posts = @posts.reorder("updated_at DESC").paginate(:page => params[:page], :per_page => 5)

    # binding.pry
  end

  def edit
  end
end
