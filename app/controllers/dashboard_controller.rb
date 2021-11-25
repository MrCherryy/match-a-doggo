class DashboardController < ApplicationController
  def show
    @user = User.find(params[:id])
    @dogs = Dog.where(user_id: params[:id])
    @matches = current_user.dogs.first.matches
  end

  def dogs
    @user = User.find(params[:id])
    @dogs = Dog.where(user_id: params[:id])
  end
end
