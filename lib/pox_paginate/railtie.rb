require 'rails'
require 'active_resource'
require 'will_paginate'
require 'active_support'

module PoxPaginate
  Root = File.dirname(__FILE__)

  class Railtie < Rails::Railtie
    config.after_initialize do
      $stderr.puts "deferred loading"
      require "#{PoxPaginate::Root}/active_support"
      require "#{PoxPaginate::Root}/remote_collection"
      require "#{PoxPaginate::Root}/active_resource"
      require "#{PoxPaginate::Root}/will_paginate"
      require "#{PoxPaginate::Root}/xml_mini"
    end
  end
end

