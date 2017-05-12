class AddPhoneToUsers < ActiveRecord::Migration
  def change
  	add_column :Users, :phone, :string, :after => :username
  end
end
