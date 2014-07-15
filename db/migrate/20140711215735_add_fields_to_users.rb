class AddFieldsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :age, :integer
  	add_column :users, :web_site, :string
  	add_column :users, :contact, :string
  	add_column :users, :collaborate, :string
  end
end
