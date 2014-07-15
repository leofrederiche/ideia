class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :description
      t.text :idea
      t.string :contact
      t.string :link_project
      t.string :idealizer
      t.integer :like
      t.integer :nlike

      t.timestamps
    end
  end
end
