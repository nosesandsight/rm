class AddReviewIdToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :review_id, :integer

  end
end
