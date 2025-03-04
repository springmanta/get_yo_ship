class CreateSpaceships < ActiveRecord::Migration[7.1]
  def change
    create_table :spaceships do |t|
      t.string :name
      t.integer :capacity
      t.float :price
      t.text :description
      t.string :image_url
      t.boolean :availability

      t.timestamps
    end
  end
end
