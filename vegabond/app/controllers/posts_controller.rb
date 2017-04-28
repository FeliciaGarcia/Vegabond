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

  def update
    @post = Post.find(params[:id])
    @city = City.find(params[:city_id])
    @post.update(post_params)

    redirect_to city_path(@city)
  end


  def edit
    @post = Post.find(params[:id])
  end

  def delete
  end

private
  def post_params
    params.require(:post)
      .permit(:title, :content)
      .merge(user_id: current_user.id, city_id: params[:city_id])
  end


end
