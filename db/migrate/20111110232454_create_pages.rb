class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name, null: false, limit: 250
      t.text :content
      t.string :slug, null: false, limit: 250

      t.timestamps
    end
  end
end
