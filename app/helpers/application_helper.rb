module ApplicationHelper
  def current_dog
    session[:dog_id] ? Dog.find(session[:dog_id]) : Dog.new
  end

  def active_class(path)
    if request.path == path
      return 'active-icon'
    else
      return ''
    end
  end
end
