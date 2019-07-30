class CreateSkillsets < ActiveRecord::Migration[5.2]
  def change
    create_table :skillsets do |t|
      t.integer :developer_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
