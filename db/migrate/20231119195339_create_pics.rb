class CreatePics < ActiveRecord::Migration[7.0]
  def change
    create_table :pics do |t|
      t.string :name
      t.string :url
      t.string :description

      t.timestamps
    end
  end
end
