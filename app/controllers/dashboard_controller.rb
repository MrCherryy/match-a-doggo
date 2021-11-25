class DashboardController < ApplicationController
  def dogs
    @user = User.find(params[:id])
    @dogs = Dog.where(user_id: params[:id])
  end
end
