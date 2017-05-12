class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :age
      t.string  :username,     limit: 125
      t.timestamps
    end
  end
end
