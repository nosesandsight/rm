class Review < ActiveRecord::Base
belongs_to :program
belongs_to :user

attr_accessible :user_id, :program_id, :body, :rating, :photo

# Paperclip
has_attached_file :photo,
  :styles => {
    :thumb=> "100x100#",
    :small  => "150x150>",
    :medium => "300x300>",
    :large =>   "400x400>" }

end
