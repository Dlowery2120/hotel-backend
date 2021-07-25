class Api::V1::HotelsController < ApplicationController
    def index
        hotels = Hotel.all
        render json: hotels, except: [:created_at, :updated_at]
    end

    def show
        hotel = Hotel.find_by(id: params[:id])
        if hotel
          render json: hotel
        else
          render json: {message: 'Hotel not found'}
        end
    end
end
