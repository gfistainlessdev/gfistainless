class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :name, null: false, limit:250
      t.string :url, limit:250

      t.timestamps
    end
  end
end
