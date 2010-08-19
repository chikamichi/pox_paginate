require 'rails'
require 'active_resource'
require 'will_paginate'
require 'active_support'

module PoxPaginate
  Root = File.dirname(__FILE__)

  def init!
    $stderr.puts "deferred loading"
    require "#{PoxPaginate::Root}/pox_paginate/active_support"
    require "#{PoxPaginate::Root}/pox_paginate/remote_collection"
    require "#{PoxPaginate::Root}/pox_paginate/active_resource"
    require "#{PoxPaginate::Root}/pox_paginate/will_paginate"
    require "#{PoxPaginate::Root}/pox_paginate/xml_mini"
  end
end

