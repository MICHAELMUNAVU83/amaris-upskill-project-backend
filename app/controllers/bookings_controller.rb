class BookingsController < ApplicationController
    skip_before_action :authorized

    def index
        @bookings = Booking.all
        render json: @bookings
    end


    def create 

        @booking = Booking.new(booking_params)
        if @booking.save
            render json: @booking
        else
            render json: @booking.errors, status: :unprocessable_entity
        end
    end

    private


    def booking_params
        params.require(:booking).permit(:user_id, :product_id, :location , :phone_number)
    end



end
