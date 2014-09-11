require "hamburger/version"
require "railties/hamburger.rb"
require "modules/backupable.rb"

module Hamburger
  class Railtie < Rails::Railtie
  	initialize "hamburger.backupable" do
		ActiveRecord::Base.send :include, Backupable
	end
  end
end
