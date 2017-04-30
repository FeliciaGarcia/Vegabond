class PostsController < ApplicationController
  def index
  end

  def show
    @post = Post.find(params[:id])
    # @post.create_at.order! 'created_at DESC'
    @city = @post.city
    # binding.pry
  end

  def new
    @city = City.find(params[:city_id])
    @post = Post.new
    # binding.pry
  end

  def create
    puts "create"
    puts @post
    @city = City.find(params[:city_id])
    @post = Post.create(post_params)
    # redirect_to cities_path
    redirect_to city_path(@city)
    # binding.pry
  end

  def update
    @post = Post.find(params[:id])
    @city = City.find(params[:city_id])
    @post.update(post_params)

    # redirect_to city_path(@city)
    redirect_to userprofile_path(@current_user.id)
  end


  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @city = City.find(params[:city_id])
    @post.destroy
    redirect_to  userprofile_path(current_user.id)
  end

  def post_params
    params.require(:post)
      .permit(:title, :content)
      .merge(user_id: current_user.id, city_id: params[:city_id])
  end


end
