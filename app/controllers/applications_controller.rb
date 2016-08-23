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
end
