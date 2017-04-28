class PostsController < ApplicationController
  def index
  end

  def show
    @post = Post.find(params[:id])
    @city = @post.city
  end

  def new

  end
  def create

  end

  def edit
  end

  def delete
  end




end
