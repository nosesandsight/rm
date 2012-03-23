class Organization < ActiveRecord::Base
has_many :comments
has_many :programs

def self.search(search)
	if search
		find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
	else
		find(:all)
	end
end
end
