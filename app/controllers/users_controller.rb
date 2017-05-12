class UsersController < ApplicationController

	def new
		@user=User.new
    end

    def index
    	@users = User.all
    end

    def create
    	  	
    	user = User.new(params[:user])
    	if user.save
    		redirect_to :root	
    	else
    		raise user.errors.inspect	
	   	end	
    end
    def edit
    	##binding.pry
    	@user = User.where(id:params[:id]).first
  	end

  	def update
  		@user= User.where(id:params[:id]).first
  		@user.username=params[:user][:username]	
  		@user.age= params[:user][:age]
  		@user.phone=params[:user][:phone]
  		if @user.save
  			flash[:success] = "Saved Successfully"
  		else
  			flash[:error] = @user.errors.full_messages.join(", ")
  		end
  		redirect_to users_path
  	end    
end
