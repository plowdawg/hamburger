module HamburgerRails
	class HamburgerRailtie < Rails::Railtie

		initializer "hamburger_railtie.backupable" do
			ActiveRecord::Base.send :include, Backupable
		end
	
		rake_tasks do
			Dir[File.join(File.dirname(__FILE__),'../tasks/')+"*.rb"].each do |file|
				load file
			end
		end
	
	end
end
