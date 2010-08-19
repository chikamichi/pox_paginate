module PoxPaginate
  module WillPaginate
  end
end

require "#{PoxPaginate::Root}/will_paginate/collection_extensions"

WillPaginate::Collection.class_eval{ include PoxPaginate::WillPaginate::CollectionExtensions }
