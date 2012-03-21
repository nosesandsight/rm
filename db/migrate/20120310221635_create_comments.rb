class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :organization

      t.timestamps
    end
    add_index :comments, :organization_id
  end
end
