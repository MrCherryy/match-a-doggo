class DogsController < ApplicationController
  def index
    current_user.dogs.first.gender
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @user = current_user
    @dog = Dog.new
  end

  def create
    @user = current_user
    @dog = Dog.new(dog_params)
    @dog.user = @user
    if @dog.save
      redirect_to dog_path(@dog)
    else
      render :new
    end
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params)
    redirect_to dog_path(@dog)
  end

  def destroy
    @user = current_user
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :photo, :breed, :birthdate, :gender, :pedigree, :address)
  end
end
