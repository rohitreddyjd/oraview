class CreateOraviewAdmins < ActiveRecord::Migration
  def change
    create_table :oraview_admins do |t|
    	t.string 			:host_name,			null: false
    	t.text 	 			:description	
    	t.integer 	  :port,					null: false
    	t.string			:service_name,  null: false
    	t.string			:username,      null: false
    	t.string			:password,      null: false 
      t.timestamps
    end
  end
end



