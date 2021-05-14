class CarsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  before_action :set_car, only: [:edit, :show, :destroy, :update]
  before_action :move_to_index, only: [:edit, :update]

  def index
    @cars = Car.all.order(created_at: 'desc')
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @car.comments.includes(:user)
  end

  def destroy
    if @car.user_id == current_user.id
      redirect_to root_path if @car.destroy
    end
  end

  def edit
  end

  def update
    if @car.update(car_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def car_params
    params.require(:car).permit(:car_name, :text, :image).merge(user_id: current_user.id)
  end

  def set_car
    @car = Car.find(params[:id])
  end

  def move_to_index
    redirect_to cars_path unless @car.user_id == current_user.id
  end

end
