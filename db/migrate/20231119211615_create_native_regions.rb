class CreateNativeRegions < ActiveRecord::Migration[7.0]
  def change
    create_table :native_regions do |t|
      t.string :continent

      t.timestamps
    end
  end
end
