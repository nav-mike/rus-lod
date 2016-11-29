class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def after_sign_in_path_for(_resource)
    root_path
  end

  def url(params_string)
    "#{api_path}#{params_string}"
  end

  def api_path
    if Rails.env.production?
      'https://api-lod-itmo.herokuapp.com/'
    else
      'https://api-lod-itmo-nav-mike.c9users.io/'
    end
  end
end
