class CreatePosts < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
      t.string :name
      t.text :description
      t.integer :cost
      t.string :email

      t.timestamps
  	end
  end
end
