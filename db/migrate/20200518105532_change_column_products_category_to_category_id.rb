class ChangeColumnProductsCategoryToCategoryId < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :category , null: false, foreign_key: true
    remove_column :products, :category , :string
  end
end