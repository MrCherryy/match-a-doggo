module ApplicationHelper
  def current_dog
    session[:dog_id] ? Dog.find(session[:dog_id]) : Dog.new
  end
end
