class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @cars = current_user.cars
  end
end
