class Application
  attr_accessor :name, :link, :key, :description

  def initialize(options)
    @name = options[:name] || options['name'] || ''
    @link = options[:link] || options['link'] || ''
    @key = options[:key] || options['key'] || ''
    @description = options[:description] || options['description'] || ''
  end

  def self.all
    url = Rails.env.production? ? prod : dev
    response = Net::HTTP.get(URI(url))
    result = Array.new
    JSON.parse(response).each do |app|
      result << (Application.new app)
    end
    result
  end

  def self.prod
    'http://api-lod-itmo.herokuapp.com/applications.json'
  end
  
  def self.dev
    'https://api-lod-itmo-nav-mike.c9users.io/applications.json'
  end
end