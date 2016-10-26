class Api
  def self.url(params_string)
    "#{api_path}#{params_string}"
  end

  def self.api_path
    if Rails.env.production?
      'https://api-lod-itmo.herokuapp.com/'
    else
      'https://api-lod-itmo-nav-mike.c9users.io/'
    end
  end
end
