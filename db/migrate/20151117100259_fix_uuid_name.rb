class FixUuidName < ActiveRecord::Migration
  def change
  	rename_column :beacons, :UUID, :uuid
  end
end
