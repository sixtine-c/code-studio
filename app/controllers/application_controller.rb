class ApplicationController < ActionController::Base

  private

  def login(user)
    Current.user = user
    reset_session
    session[:user_id] = user.id
  end

  def logout
    Current.user = nil
    reset_session
  end
end
