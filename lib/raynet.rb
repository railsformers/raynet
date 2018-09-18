module Raynet
  require 'raynet/version'
  require 'raynet/engine' if defined?(::Rails)
  require 'raynet/core'
  require 'raynet/companies'
  require 'raynet/business_cases'
  require 'raynet/leads'

  class Config
    @@config = {}
    cattr_accessor :config

    def initialize(opts = {})
      @opts = opts
    end
  end

end
