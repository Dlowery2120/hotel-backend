class Api::V1::AuthController < ApplicationController
    before_action :logged_in?, only: [:create]
    def login 
    # byebug
        # search for a user 
        user = User.find_by(username: auth_param[:username])
            # if user and password matches 
            if user && user.authenticate(auth_param[:password])
            #  send back a token
                render json: {user: user, token: JWT.encode({user_id: user.id}, "UserToken")}
            else 
                render json: {error: "Incorrect username or password"}
            end

        end
        private
        def auth_param
            params.require(:auth).permit(:username, :password)
        end
    end
