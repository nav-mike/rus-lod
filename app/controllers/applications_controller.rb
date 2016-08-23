class ApplicationsController < ApplicationController
  before_action :set_application, only: %i(edit update destroy)

  def index
    @apps = Application.all
  rescue => e
    @error = e.message
  end

  def new
    response = Net::HTTP.get(URI(url('applications/key.json')))
    @key = JSON.parse(response)['key']
  rescue => e
    @error = e.message
  end

  def create
    @application = Application.new application_params
    @application.save!
    redirect_to '/data/applications'
  rescue => e
    @error = e.message
  end

  def edit
    @application = Application.find params[:key]
  end

  def update
    @application = Application.new application_params
    @application.update
    redirect_to '/data/applications'
  rescue => e
    @error = e.message
  end

  def destroy
    @application.destroy
    redirect_to '/data/applications'
  rescue => e
    byebug
    @error = e.message
  end

  private

  def set_application
    @application = Application.new key: params[:key]
  end

  def application_params
    params.require(:application).permit(:name, :description, :link, :key)
  end
end
