class CreateVotations < ActiveRecord::Migration
  def change
    create_table :votations do |t|
      t.integer :idea_id
      t.integer :user_id
      t.boolean :like

      t.timestamps
    end
  end
end
