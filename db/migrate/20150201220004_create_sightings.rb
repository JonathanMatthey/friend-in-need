class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.string :name
      t.float :lat
      t.float :long
      t.boolean :fuckedup

      t.timestamps
    end
  end
end
