class AddDbnamEtoOraivewAdmin < ActiveRecord::Migration
  def up
  	add_column :oraview_admins, :dbname, :string, :after => :username
  end

  def down
  end
end
