class OrganizersController < ApplicationController

    def index
        organizers = Organizer.all 
        render json: organizers
    end

    def create
        organizer = Organizer.create(organizer_params)
        render json: organizer

    end

    def show
        organizer = Organizer.find_by(id: params[:id])
        render json: organizer
    end

    def destroy
        organizer = Organizer.find_by(id: params[:id])
        organizer.destroy
    end

    private 

    def organizer_params 
        params.require(:organizer).permit!
    end


end
