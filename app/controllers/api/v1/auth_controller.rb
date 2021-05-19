class Api::V1::AuthController < ApplicationController

    def login 
        # search for a user 
        user = User.find_by(username: auth_param[:name])
            # if user and password matches 
            if user && user.authenticate(auth_param[:password])
            #  send back a token
                render json: {username: user.name, token: JWT.encode({user_id: user.id}, "UserToken")}
            else 
                render json: {error: "Incorrect username or password"}
            end
    
    
        end
    
private

        def auth_param
            params.require(:auth).permit(:name, :password)
        end

end
