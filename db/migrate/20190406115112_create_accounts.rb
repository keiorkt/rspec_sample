class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :account_name
      t.integer :balance, default: 0
      t.integer :lock_version, default: 0

      t.timestamps
    end
  end
end
