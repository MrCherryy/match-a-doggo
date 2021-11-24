class DashboardController < ApplicationController
  def show
    @user = User.find(params[:id])
    @dogs = Dog.where(user_id: params[:id])
    @requests = Match.where(female_dog_id: @dogs) || Match.where(male_dog_id: @dogs)
  end

  def dogs
    @user = User.find(params[:id])
    @dogs = Dog.where(user_id: params[:id])
  end

  # def requests
  #   @dog = Dog.find()
  # end
end
