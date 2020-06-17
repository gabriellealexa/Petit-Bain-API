class StarredOrganizersController < ApplicationController
    skip_before_action :require_login

def index
    starred_organizer = StarredOrganizer.all 
    render json: starred_organizer
end

def create
    starred_organizer = StarredOrganizer.create(starred_organizer_params)
    render json: starred_organizer
end

def show
    starred_organizer = StarredOrganizer.find_by(id: params[:id])
    render json: starred_organizer
end

def destroy
    starred_organizer = StarredOrganizer.find_by(id: params[:id])
    starred_organizer.destroy
end

private 

def starred_organizer_params 
    params.require(:starred_organizer).permit!
end

end
