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
  end





end
