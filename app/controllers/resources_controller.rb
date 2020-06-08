class ResourcesController < ApplicationController

        def index
            resources = Resource.all 
            render json: resources
        end
    
        def create
            resource = Resource.create(resource_params)
            render json: resource
    
        end
    
        def show
            resource = Resource.find_by(id: params[:id])
            render json: resource
        end
    
        def destroy
            resource = Resource.find_by(id: params[:id])
            resource.destroy
        end
    
        private 
    
        def resource_params 
            params.require(:resource).permit!
        end

end
