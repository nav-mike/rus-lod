class PublicationsController < ApplicationController
  def index
    url = "#{Rails.configuration.x.lod_ifmo_api_url}/publications"

    conn = Faraday.new(url: url) do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.response :json
    end

    response = conn.get 'projects/1.json'
    @result = response.body
  rescue => e
    logger.tagged('PublicationsController', self.class) do
      logger.error e.message
      logger.error e.backtrace.join("\n")
    end
  end
end
