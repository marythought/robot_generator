class CreateRobotLists < ActiveRecord::Migration
  def change
    create_table :robot_lists do |t|
      t.string :name
      t.text :description
      t.integer :arms
      t.string :material
      t.string :fuel
      t.boolean :voice_box
      t.text :notes

      t.timestamps null: false
    end
  end
end
