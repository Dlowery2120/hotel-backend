class Api::V1::UsersController < ApplicationController  
    
  wrap_parameters :user, include: [:username, :password, :password_confirmation, :first_name, :last_name]
      def index
          users = User.all
          render json: users, except: [:created_at, :updated_at]
      end
  
      def show
          user = User.find_by(id: params[:id])
          if user
            render json: user, except: [:created_at, :updated_at]
          else
            render json: {message: 'User not found'}
          end
      end
      def create
        user = User.new(user_params)
    
        if user.save
          render json: user, status: :created
        else
          render json: user.errors, status: :unprocessable_entity
        end
      end

  end
  
  private 
  
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :first_name, :last_name)
  end