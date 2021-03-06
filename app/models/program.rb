class Program < ActiveRecord::Base
belongs_to :organization
has_many :reviews
attr_accessible :id, :photo

# Paperclip
has_attached_file :photo,
  :styles => {
    :thumb=> "100x100#",
    :small  => "150x150>",
    :medium => "300x300>",
    :large =>   "400x400>" }
end
