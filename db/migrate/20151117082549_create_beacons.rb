class CreateBeacons < ActiveRecord::Migration
  def change
    create_table :beacons do |t|
      t.string :UUID
      t.text :description
      t.timestamps
    end
  end
end
