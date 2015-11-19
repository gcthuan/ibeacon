class AddMajorMinorToBeacons < ActiveRecord::Migration
  def change
  	add_column :beacons, :major, :integer
  	add_column :beacons, :minor, :integer
  end
end
