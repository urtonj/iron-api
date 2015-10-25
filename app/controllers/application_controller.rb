class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # TODO: should be replaced after adding user login
  def current_user
    User.find_by email: 'jason.urton@gmail.com'
  end
end
