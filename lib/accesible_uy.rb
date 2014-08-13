require 'accesible_uy/configuration'

class AccesibleUY
  def self.hello
    puts 'Hello world!'
  end

  def self.config
    Configuration.config
  end
end
