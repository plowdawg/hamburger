class HamburgerRailtie < Rails::Railtie
	rake_tasks do
		Dir[File.join(File.dirname(__FILE__),'../tasks/')+"*.rb"].each do |file|
			load file
		end
	end
end
