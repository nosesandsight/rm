class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.text :description
      t.integer :weekly_cost
      t.string :location
      t.integer :organization_id

      t.timestamps
    end
  end
end
