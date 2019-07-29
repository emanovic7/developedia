class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.integer :project_id
      t.integer :developer_id

      t.timestamps
    end
  end
end
