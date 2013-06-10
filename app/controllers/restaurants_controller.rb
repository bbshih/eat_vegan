class RestaurantsController < ApplicationController
  before_filter :find_restaurant, only: [:edit, :show, :update, :destroy]

  def index
    @restaurants = Restaurant.all
    @restaurant = Restaurant.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    if @restaurant.save
      flash[:notice] = "Restaurant added successfully."
      redirect_to @restaurant
    else
      flash[:alert] = "Restaurant was not added"
      render action: "new"
    end
  end

  def update
    if @restaurant.update_attributes(params[:restaurant])
      redirect_to @restaurant, notice: "Changes saved"
    else
      render action: "edit", notice: "Save failed"
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path, notice: "Restaurant deleted"
  end

  def edit
  end

  def show
  end



  private
  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The restaurant you were looking for could not be found."
      redirect_to restaurants_path
  end
end
