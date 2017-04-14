class AttractionsController < ApplicationController

	def index
		@attractions = Attraction.all
	end

	def new
		@attraction = Attraction.new
	end
	
	def create
		@attraction = Attraction.new(attraction_params(:name, :ticets, :nausea_rating, :happiness_rating, :min_height))
		@attraction.save
		redirect_to attraction_url(@attraction)
	end

	def show
		@attraction = Attraction.find(params[:id])
	end

	def edit
		@attraction = Attraction.find(params[:id])
	end

	def update
		@attraction = Attraction.find(params[:id])
	end

	private

	def attraction_params(*args)
		params.require(:attraction).permit(*args)
	end

end