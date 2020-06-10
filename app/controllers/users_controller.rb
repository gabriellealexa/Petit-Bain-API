class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  skip_before_action :authorized, only: [:create] 

    def index
      users = User.all 
      render json: users 
    end

    def show

      render json: user 
    end 

    def profile
      render json: { user: UserSerializer.new(current_user)}, status: :accepted
    end 

    def create
      @user = User.create(user_params)
      if @user.valid?
        @token = encode_token({ user_id: @user.id })
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end
   
    private

    def set_user
      @user = User.find(params[:id])
    end 
   
    def user_params
      params.require(:user).permit(:username, :password, :bio, :avatar)
    end
  end
