class GeosController < ApplicationController

	def index
		@geos = Geo.all
	end

end
