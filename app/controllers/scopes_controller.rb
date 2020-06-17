class ScopesController < ApplicationController
    skip_before_action :require_login

    def index
       scopes = Scope.all
       render json: scopes 
    end

    def create
        scope = Scope.create(scope_params)
        render json: scope
    end

    def show
        scope = Scope.find_by(id: params[:id])
        render json: scope
    end

    private 

    def scope_params 
        params.require(:scope).permit!
    end


end
