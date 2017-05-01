class PostsController < ApplicationController
  def index
  end

  def show
    @post = Post.find(params[:id])
    # @post.create_at.order! 'created_at DESC'
    @city = @post.city
    # binding.pry
    #controller for our post as well as connecting the post with a specific city
  end

  def new
    @city = City.find(params[:city_id])
    @post = Post.new
    # binding.pry
    #controller for new posts. posts are conntected to a specific city
  end

  def create
    puts "create"
    puts @post
    @city = City.find(params[:city_id])
    @post = Post.create(post_params)
    # redirect_to cities_path
    redirect_to city_path(@city)
    # binding.pry
    #controller to create a new post, that is for a specific city, and redirecting 
    #the user to the city show page
  end

  def update
    @post = Post.find(params[:id])
    @city = City.find(params[:city_id])
    @post.update(post_params)

    # redirect_to city_path(@city)
    redirect_to userprofile_path(@current_user.id)
    #update controller and redirecting user to the city show page
  end


  def edit
    @post = Post.find(params[:id])
    #edit controller
  end

  def destroy
    @post = Post.find(params[:id])
    @city = City.find(params[:city_id])
    @post.destroy
    redirect_to  userprofile_path(current_user.id)
    #controller for deleting a post, has to find it by the city id as well
  end

  def post_params
    params.require(:post)
      .permit(:title, :content)
      .merge(user_id: current_user.id, city_id: params[:city_id])
      #defining the parameters necessary to create a post
  end


end
