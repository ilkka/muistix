require 'uri'

class Thing < ActiveRecord::Base
  validates_presence_of :description
  validates_format_of :uri, :with => URI::Parser.new.make_regexp()
end
