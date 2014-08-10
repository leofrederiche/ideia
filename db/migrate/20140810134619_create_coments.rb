class CreateComents < ActiveRecord::Migration
  def change
    create_table :coments do |t|
      t.integer :idea_id
      t.integer :user_id
      t.text :description

      t.timestamps
    end
  end
end
