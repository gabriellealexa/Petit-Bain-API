class OrganizerResourcesController < ApplicationController

    def index
        organizer_resources = OrganizerResource.all 
        render json: organizer_resources
    end

    def create
        organizer_resource = OrganizerResource.create(organizer_resource_params)
        render json: organizer_resource

    end

    def show
        organizer/-resource = OrganizerResource.find_by(id: params[:id])
        render json: organizer_resource
    end

    def destroy
        organizer_resource = OrganizerResource.find_by(id: params[:id])
        organizer_resource.destroy
    end

    private 

    def organizer_resource_params 
        params.require(:organizer_resource).permit!
    end



end
