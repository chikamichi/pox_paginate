require 'rails'
require 'active_resource'
require 'will_paginate'
require 'active_support'

module PoxPaginate
  Root = File.dirname(__FILE__)

  class Railtie < Rails::Railtie
    config.after_initialize do
      $stderr.puts "deferred loading"
      require "active_support"
      require "remote_collection"
      require "active_resource"
      require "will_paginate"
      require "xml_mini"
    end
  end
end

