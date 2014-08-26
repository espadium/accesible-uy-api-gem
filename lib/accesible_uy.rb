require 'accesible_uy/client'

module AccesibleUY
  class << self
    include AccesibleUY::Configurable

    def client
      @client = AccesibleUY::Client.new(options) unless defined?(@client)
      @client
    end

    def hello
      puts 'Hello world!'
    end

    def config
      Configuration.config
    end
  end
end
