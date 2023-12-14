class CreateAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.decimal :balance
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
