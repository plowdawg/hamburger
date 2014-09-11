

namespace :hamburger do
	desc "dump the database data to json"
	task :dump => :environment do
		file_handle = File.open("database_dump.json","w")
		puts "hello...starting the dump\n\r"
		Rails.application.eager_load!
		ActiveRecord::Base.descendants.each do |record|
			record.all.each do |data|
				file_handle.write(data.to_backupable_json)
				file_handle.write("\n\r");
			end
			file_handle.write("\n\r")
		end
		file_handle.close
	end

	desc "load the database back from the json file"
	task :load => :environment do
		puts "hello...restoring the database from json dump\n\r"
		line_no = 0
		fileRedefs = eval(File.open("hamburger_model.txt","r").read)
		File.open("database_dump.json","r").each_line do |line|
			line_no += 1
			if !line.nil? && !(line =~ /^$/)
				begin
					jsonObj = JSON.load(line)
				rescue JSON::ParserError
					puts "Parser Error on #{line_no}"
				end
				if !jsonObj.nil?
					jsonObj.each do |key, value|
						model = nil
						if !fileRedefs[key].nil?
							model = fileRedefs[key].constantize
						else
							model = key.camelize.constantize
						end
						model.skip_callback(:create)
						resource = model.new(value)
						if resource.save(validate: false)
							puts "Line ok\n\r"
						else
							puts "Bad key value #{key} #{value}"
						end
					end
				end
			end
		end

	end
end
