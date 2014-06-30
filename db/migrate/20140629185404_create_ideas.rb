class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :description
      t.text :idea
      t.string :contact
      t.string :link_project
      t.string :ref
      t.integer :like
      t.integer :nlike
      t.string :employees

      t.timestamps
    end
  end
end
