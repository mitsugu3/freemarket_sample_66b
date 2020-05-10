class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :user,          null: false, foreign_key: true
      t.string     :name,          null: false
      t.text       :description,   null: false
      t.references :category,      null: false
      t.references :brand,          null: false
      t.string     :condition,     null: false
      t.string     :delivery_user, null: false
      t.string     :delivery_method, null: false
      t.string     :area,          null: false
      t.string     :delivery_days, null: false
      t.integer    :price,         null: false

      t.timestamps
    end
  end
end
