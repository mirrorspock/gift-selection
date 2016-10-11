class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :unique_code
      t.integer :choice

      t.timestamps
    end
  end
end
