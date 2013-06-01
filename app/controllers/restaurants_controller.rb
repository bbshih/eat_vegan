class RestaurantsController < ApplicationController
  before_filter :find_restaurant, only: [:edit, :show, :update, :destroy]

  def index
    @restaurant = Restaurant.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    if @restaurant.save
      redirect_to @restaurant, notice: "Restaurant successfully added"
    else
      flash[:alert] = "Restaurant was not added"
      render action: "new"
    end
  end

  def edit
  end

  def update
    if @restaurant.update_attributes(params[:restaurant])
      redirect_to @restaurant, notice: "Changes saved"
    else
      render action: "edit", notice: "Save failed"
    end
  end

  def show
  end

  private
  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
