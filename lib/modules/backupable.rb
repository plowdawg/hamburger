module Backupable
	def to_backupable_json
		{self.class.name.downcase => self.attributes}.to_json
	end
end
