class ApplicationController < ActionController::API
  include Knock::Authenticable
  include ::ActionController::Cookies
  include ActionController::RequestForgeryProtection
  private

  def logged_in?
    !!current_user
  end
end
