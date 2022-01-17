class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :title
      t.float :price, default: 5
      t.integer :status, default: 0
      t.integer :frequency, default: 0
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
