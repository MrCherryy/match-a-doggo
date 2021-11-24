class MatchesController < ApplicationController

  def index
    @matches = current_user.dogs.first.matches
  end

  # def new
  #   @dog = Dog.find(params[:dog_id])
  #   @match = Match.new
  # end

  def create
    @match = Match.new(match_params)
    if @match.save
      redirect_to matches_path
    else
      redirect_to dog_path(@match.matched_dog)
    end
  end

  def destroy
    @user = current_user
    @match = Match.find(params[:id])
    @match.destroy
    redirect_to matches_profile_path(@user)
  end

  # def accept
  #   @match = Match.find(params[:id])
  #   @match.status = "accepted"
  #   if @match.save
  #     redirect_to matches_profile_path
  #   else
  #     render "dashboard#matches"
  #     flash[:alert] = "Your match was not saved!"
  #   end
  # end

  # def deny
  #   @match = Match.find(params[:id])
  #   @match.status = "denied"
  #   if @match.save
  #     redirect_to matches_profile_path
  #   else
  #     render "dashboard#matches"
  #     flash[:alert] = "Your match was not saved!"
  #   end
  # end

  private

  def match_params
    params.require(:match).permit(:matching_dog_id, :matched_dog_id, :status)
  end
end
