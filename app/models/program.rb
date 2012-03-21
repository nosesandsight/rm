class Program < ActiveRecord::Base
belongs_to :organization
has_many :reviews
end
