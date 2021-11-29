class DogsController < ApplicationController
  def index
    my_dog = helpers.current_dog
    redirect_to edit_user_registration_path, notice: "you have to select a dog" unless my_dog.id
    @dogs = Dog.filter_all(my_dog)
  end

  def show
    @dog = Dog.find(params[:id])
    @match = Match.new
    @marker = {
      lat: @dog.latitude,
      lng: @dog.longitude,
      info_window: render_to_string(partial: 'info_window', locals: { dog: @dog }),
      #image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
    }
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
    @dog.delete
    redirect_to dogs_profile_path(@user)
  end

  def new_session
    session[:dog_id] = params[:dog_id]
    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :photo, :breed, :birthdate, :gender, :pedigree, :address)
  end
end
