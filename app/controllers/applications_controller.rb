class ApplicationsController < ApplicationController
  def index
    @apps = Application.all
  rescue => e
    @error = e.message
  end

  def new
  end
end
