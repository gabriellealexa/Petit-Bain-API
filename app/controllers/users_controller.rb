class UsersController < ApplicationController
  skip_before_action :require_login, only: [:create, :index, :update] 


    def index 
      users = User.all 
      render json: users 
    end 

    def create
      user = User.create(user_params)
      if user.valid?
        payload = {user_id: user.id}
        token = encode_token(payload)
        puts token 
        render json: { user: user, jwt: token }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end

    def update
      user.update(user_params)
      render json: user
  end
   
    private

    def set_user
      @user = User.find(params[:id])
    end 
   
    def user_params
      params.permit(:username, :password, :bio, :avatar)
    end
  end
