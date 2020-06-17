class AuthController < ApplicationController
    skip_before_action :require_login, only: [:login, :auto_login]
   
    def login 
        user = User.find_by(username: user_login_params[:username])
        #searches for username
        #if user exists and the password is authenticated via bcrypt,
        #create a token and render with the key-value pairs of the user and token
        if user && user.authenticate(params[:password])
            payload = {user_id: user.id}
            token = encode_token(payload)
            render json: {user: UserSerializer.new(user), jwt: token, success: "Welcome back, #{user.username}"}
        else
            render json: {failure: "Log in failed! Username or password invalid."}
        end 
    end 

    def logged_in?
        !!session_user
    end

    def require_login 
        render json: {message: 'Please Login'}, status: :unauthorized unless logged_in? 
    end 

    def auto_login
        if session_user
            render json: session_user
        else
            render json: {errors: "No User Logged In"}
        end
    end 

    def user_is_authed
        render json: {message: "You are authorized"}
      end
   

    private
   
    def user_login_params
      # params { user: {username: 'Chandler Bing', password: 'hi' } }
      params.permit(:username, :password)
    end
  end
