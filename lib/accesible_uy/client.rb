require 'accesible_uy/configuration'

class Client
  include AccesibleUY::Configurable

  def hello
    puts 'Hello world!'
  end

  def config
    { api_key: api_key, api_secret: api_secret, api_endpoint: api_endpoint }
  end
end
