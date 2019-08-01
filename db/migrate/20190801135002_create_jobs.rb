class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.integer :developer_id
      t.integer :project_id

      t.timestamps
    end
  end
end
