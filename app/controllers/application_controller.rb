class ApplicationController < ActionController::API
  protect_from_forgery with: :null_session
  def authenticate_user!
    return false
  end
end
