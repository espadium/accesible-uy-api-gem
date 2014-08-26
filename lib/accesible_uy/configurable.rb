module AccesibeUY
  module Configurable
    attr_accessor :api_key, :api_secret, :api_endpoint

    class << self
      @keys ||= [:api_key, :api_secret, :api_endpoint]
    end

    def configure
      yield self
    end
  end
end
