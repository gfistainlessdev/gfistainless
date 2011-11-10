class CreateProductcategories < ActiveRecord::Migration
  def change
    create_table :productcategories do |t|
      t.string :name, null: false, limit: 250
      t.string :ancestry

      t.timestamps
    end
    add_index :productcategories, :ancestry
  end
end
