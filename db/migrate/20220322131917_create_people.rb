class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :first_name, null: false, default: ''
      t.string :last_name, null: false, default: ''
      t.float :age, null: false, default: 0
      t.float :height, null: false, default: 0.0
      t.float :weight, null: false, default: 0.0
      t.float :body_fat, null: false, default: 0.0

      # BTDM に必要なカラムを追加する
      t.integer :bitemporal_id
      t.datetime :valid_from
      t.datetime :valid_to
      t.datetime :transaction_from
      t.datetime :transaction_to

      t.timestamps
    end
  end
end
