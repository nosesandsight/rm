class AddProgramIdToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :program_id, :integer

  end
end
