class UsersController < ApplicationController

	before_action :set_user, only: [:show, :edit, :update]

	def index
		@users = User.all
	end 

	def show
	end 

	def new
		@user = User.new
	end 

	def create
		if @user.save
          flash[:notice] = "You have successfully signed up"
          redirect_to root_path
	    else
          render 'new'
	    end
	end 

	def edit
	end 

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			flash[:notice] = "You have successfully updated your profile"
			redirect_to @user
		else
			render 'edit'
		end 
	end 

	private 

	def set_user
		@user = User.find(params[:id])
	end

	def user_params
        params.require(:user).permit(:name, :email, :phonenumber, :description)
	end		

end 
