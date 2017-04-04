class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate
    if !signed_in?
      redirect_to sign_in_path
    end
  end

  def signed_in?
    !!current_email
  end

  def current_email
    session[:current_email]
  end

  def sign_in(email)
    session[:current_email] = email
  end
end
