class Api::V1::BookingsController < ApplicationController
    def index
        bookings = Booking.all
        render json: bookings, except: [:created_at, :updated_at]
    end

    def show
        booking = Booking.find_by(id: params[:id])
        if booking
          render json: booking, except: [:created_at, :updated_at]
        else
          render json: {message: 'Booking not found'}
        end
    end
    def create
        booking = Booking.new(booking_params)
    
        if booking.save
          render json: booking, status: :created
        else
          render json: booking.errors, status: :unprocessable_entity
        end
    end

    def update
      booking = Booking.find(params[:id])
      booking.update(booking_params)
      render json: booking
    end
    

    def destroy
      booking = Booking.destroy(params[:id])
    end

    private

    def booking_params
        params.require(:booking).permit(:reservation_number, :check_in, :check_out, :user_id, :room_id)
    end
end

