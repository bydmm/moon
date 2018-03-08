class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authed!
    if request.headers['HTTP_X_SECRET_KEY'] != "iriri"
      render json: { need_key: true }, status: 401
    end
  end
end
