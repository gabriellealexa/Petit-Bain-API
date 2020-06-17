class StarredResourcesController < ApplicationController
    skip_before_action :require_login

def index
    starred_resource = StarredResource.all 
    render json: starred_resource
end

def create
    starred_resource = StarredResource.create(starred_resource_params)
    render json: starred_resource

end

def show
    starred_resource = StarredResource.find_by(id: params[:id])
    render json: starred_resource
end

def destroy
    starred_resource = StarredResource.find_by(id: params[:id])
    starred_resource.destroy
end

private 

def starred_resource_params 
    params.require(:starred_resource).permit!
end

end
