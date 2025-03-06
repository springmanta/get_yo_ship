class AddMadeByToSpaceships < ActiveRecord::Migration[7.1]
  def change
    add_column :spaceships, :made_by, :string
    add_column :spaceships, :ship_class, :string
    add_column :spaceships, :max_speed, :float
  end
end
