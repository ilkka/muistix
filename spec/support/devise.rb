# This file loads devise helpers into all controller specs
RSpec.configure do |c|
  c.include Devise::TestHelpers, :type => :controller
end
