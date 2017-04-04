class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate
    if !current_user.signed_in?
      redirect_to sign_in_path
    end
  end

  def sign_in(email)
    session[:current_email] = email
  end

  def current_user
    User.new(session[:current_email])
  end
end
