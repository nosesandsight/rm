class Review < ActiveRecord::Base
belongs_to :program
belongs_to :user

attr_accessible :user_id, :program_id, :body, :rating

end
