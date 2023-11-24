class AddRefToCategoryExpenditure < ActiveRecord::Migration[7.1]
  def change
    add_reference :category_expenditures, :expenditure, null: false, foreign_key: true
    add_reference :category_expenditures, :category, null: false, foreign_key: true
  end
end
