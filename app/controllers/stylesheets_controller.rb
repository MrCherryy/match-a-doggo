class StylesheetsController < ApplicationController
skip_before_action :authenticate_user!, only: [ :index, :show ]
  def index
  end

  def show
    @dog = Dog.all.first
  end
end
