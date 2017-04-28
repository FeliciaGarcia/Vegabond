class PostsController < ApplicationController
  def index
  end

  def show

  end

  def new
    @city = City.find(params[:city_id])
    @post = Post.new
    # binding.pry
  end
  def create
    puts "create"
    puts @post
    @post = Post.create(post_params)
    redirect_to cities_path
    # binding.pry
  end

  def edit
  end

  def delete
  end

  def post_params
    params.require(:post)
      .permit(:title, :content)
      .merge(user_id: current_user.id, city_id: params[:city_id])
  end


end
