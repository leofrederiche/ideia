class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.date :date
      t.text :description
      t.string :image
      t.string :contact
      t.integer :like
      t.integer :nlike
      t.string :collaborates

      t.timestamps
    end
  end
end
