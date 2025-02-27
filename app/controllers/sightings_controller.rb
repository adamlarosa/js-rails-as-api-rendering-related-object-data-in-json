class SightingsController < ApplicationController
	def index
	    sightings = Sighting.all
	    render json: sightings, include: [:bird, :location]
	end

	def show
	    sighting = Sighting.find_by(id: params[:id])
	    if sighting
		render json: sighting, include: [:bird, :location]
	    else
		render json: { message: 'NO ONE SAW ANY BIRDS.  GO HOME.' }
	    end
	end
end
