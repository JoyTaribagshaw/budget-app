class CreateExpenditures < ActiveRecord::Migration[7.1]
  def change
    create_table :expenditures do |t|
      t.decimal :amount
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
