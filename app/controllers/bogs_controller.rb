class BogsController < ApplicationController

	def index
		@bogs = Bog.all
		render :index
	end

	def new
		render :new
	end	

	def create
		bog = params.require(:bog).permit(:name, :description)
		Bog.create(bog)
		redirect_to "/bogs"
	end

	def show
		bog_id = params[:id]
		@bog = Bog.find(bog_id)
		render :show
	end

	def edit
		bog_id = params[:id]
		@bog = Bog.find(bog_id)
		render :edit
	end

	def update
		bog_id = params[:id]
		bog = Bog.find(bog_id)

		updated_info = params.require(:bog).permit(:name, :description)
		bog.update_attributes(updated_info)

		redirect_to "/bogs/#{bog_id}"
	end

	def delete
		bog_id = params[:id]
		bog = Bog.find(bog_id)

		bog.destroy

		redirect_to "/bogs"
	end

end