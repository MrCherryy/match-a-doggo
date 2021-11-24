class MatchesController < ApplicationController

  def index
    @matches = Match.all
  end

  # def new
  #   @dog = Dog.find(params[:dog_id])
  #   @match = Match.new
  # end

  def create
    @dog = Dog.find(params[:dog_id])
    @match = Match.new(match_params)
    @match.user = current_user
    @match.dog = @dog
    @match.status = Match::STATUS[1]
    if @match.save
      redirect_to dog_path(@dog)
    else
      render :new
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
