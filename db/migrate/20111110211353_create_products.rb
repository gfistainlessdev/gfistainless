class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false, limit: 250
      t.references :productcategory

      t.timestamps
    end
  end
end
