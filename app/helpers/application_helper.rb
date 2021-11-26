module ApplicationHelper
  def current_dog
    Dog.find(session[:dog_id])
  end
end
