class FrontController < ApplicationController
  layout 'front/layouts/base'

  private

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    end
  end
  helper_method :current_user
end
