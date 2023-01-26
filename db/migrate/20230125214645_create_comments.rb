class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :rating
      t.references :user 
      t.references :joke
      t.timestamps
    end
  end
end