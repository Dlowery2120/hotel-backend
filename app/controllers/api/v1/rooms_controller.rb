class Api::V1::RoomsController < ApplicationController
    def index
        rooms = Room.all
        render json: rooms, except: [:created_at, :updated_at]
    end

    def show
        room = Room.find_by(id: params[:id])
        if room
          render json: room, except: [:created_at, :updated_at]
        else
          render json: {message: 'Room not found'}
        end
    end
end
