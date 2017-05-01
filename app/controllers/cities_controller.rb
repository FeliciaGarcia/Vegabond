class CitiesController < ApplicationController
  def index
    @cities = City.all
  end
#defining cities as a list of all the cities

  def show
    @city = City.find(params[:id])
    @posts = @city.posts
    @count = @city.posts.count
    # @posts = @posts.reorder("updated_at DESC").paginate(:page => params[:page], :per_page => 10)
    @posts = @posts.reorder("updated_at DESC").paginate(:page => params[:page], :per_page => 5)

   #defining the view of our show controllers. Posts are viewed through a specific city.
  end

  def edit
    @city = City.find(params[:id])
    #this is our edit controller for cities
  end

  def update
    @city = City.find(params[:id])
    @city.update(city_params)
    redirect_to cities_path

    #update controller for cities and redirecting the user to the cities show page
  end

  def new
    @city = City.new
    #controller for new city
  end

  def create
    puts "city"
    @city = City.create(city_params)

    redirect_to cities_path
    #controller for creating a new city 
  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy

    redirect_to cities_path
    #controller for deleting cities and redirecting the users to the cities show page
  end


  def city_params
    params.require(:city)
      .permit(:title, :description, :photo_url, :longitude, :latitude)
      #defining the parameters of the city with our seeded data structure
  end





end
