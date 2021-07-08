class SeriesController < ApplicationController
	def index
		@series = SerieDatum.all
		@series = @series.where("lower(actor) LIKE '%#{params[:search].downcase}%'") if params[:search]
	end
end
