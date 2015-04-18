class FrontController < ApplicationController
  layout 'front/layouts/base'

  private

  def current_user
    @_current_user ||= (
      begin
        User.find(session[:user_id]) if session[:user_id]
      rescue ActiveRecord::RecordNotFound
        session[:user_id] = nil
      end
    )
  end
  helper_method :current_user
end
