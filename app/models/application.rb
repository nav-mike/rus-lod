class Application < Api
  attr_accessor :name, :link, :key, :description

  def initialize(options)
    @name = options[:name] || options['name'] || ''
    @link = options[:link] || options['link'] || ''
    @key = options[:key] || options['key'] || ''
    @description = options[:description] || options['description'] || ''
  end

  def self.all
    response = Net::HTTP.get(URI(url('applications.json')))
    result = Array.new
    JSON.parse(response).each do |app|
      result << (Application.new app)
    end
    result
  end

  def save!
    uri = URI(self.class.url('applications.json'))
    req = Net::HTTP::Post.new(uri, 'Content-type' => 'application/json')
    req.body = self.to_json
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    response = http.request(req)
  end

  def destroy
    uri = URI(self.class.url("applications/#{@key}.json"))
    req = Net::HTTP::Delete.new(uri, 'Content-type' => 'application/json')
    req.body = {key: @key}.to_json
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.request req
  end
end