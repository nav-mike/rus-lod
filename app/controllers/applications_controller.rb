class ApplicationsController < ApplicationController
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
    byebug
    @error = e.message
  end

  private

  def application_params
    params.require(:application).permit(:name, :description, :link, :key)
  end
end
