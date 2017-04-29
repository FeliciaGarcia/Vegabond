class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @posts = @city.posts
    @posts = @posts.order('updated_at DESC')
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


  def city_params
    params.require(:city)
      .permit(:title, :description, :photo_url, :longitude, :latitude)
  end





end
