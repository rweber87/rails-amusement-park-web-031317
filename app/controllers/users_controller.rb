class UsersController < ApplicationController


	def new
		@user = User.new
	end

	def create
		binding.pry
		@user = User.new(user_params(:name, :password, :nausea, :happiness, :tickets, :height, :admin => false))
		@user.save
		session[:user_id] = @user.id
		redirect_to user_path(@user)
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		binding.pry
		@user = User.find(params[:id])
		@user.update(user_params(:name, :nausea, :happiness, :tickets, :height, :admin => false))
		redirect_to user_path(@user)
	end

	def take_ride
	end

	private

	def user_params(*args)
		params.require(:user).permit(*args)
	end

end