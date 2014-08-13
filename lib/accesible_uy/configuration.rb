module Configuration
  @valid_config_keys = %w(api_key api_secret)
  @config = {}

  def config
    load_file(Rails.root.join('config', 'accesible_uy.yml')) if @config.empty?

    @config
  end

  def configure(opts = {})
    opts.each do |key, value|
      @config[key] = value if @valid_config_keys.include? key
    end
  end

  def load_file(path_to_yaml_file)
    begin
      config = YAML.load(IO.read(path_to_yaml_file))[Rails.env]
    rescue => exception
      raise "YAML configuration file couldn't be found: #{ exception }"
    end
    configure(config)
  end

  module_function :config
  module_function :configure
  module_function :load_file
end
