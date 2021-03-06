class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @posts = @city.posts
    @count = @city.posts.count
    # @posts = @posts.reorder("updated_at DESC").paginate(:page => params[:page], :per_page => 10)
    @posts = @posts.reorder("updated_at DESC").paginate(:page => params[:page], :per_page => 5)

    # binding.pry
    # @posts = @posts.order('updated_at DESC')
  end

  def edit
    @city = City.find(params[:id])
  end

  def update
    @city = City.find(params[:id])
    @city.update(city_params)
    redirect_to cities_path
  end

  def new
    @city = City.new
  end

  def create
    puts "city"
    @city = City.create(city_params)

    redirect_to cities_path
  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy
    # binding.pry
    redirect_to cities_path
  end


  def city_params
    params.require(:city)
      .permit(:title, :description, :photo_url, :longitude, :latitude)
  end





end
