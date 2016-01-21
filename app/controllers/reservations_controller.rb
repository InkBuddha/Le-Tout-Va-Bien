class ReservationsController < ApplicationController
  def new
  	@reservation = Reservation.new
  end

  def create
  	@reservation = Reservation.new(reservation_params)

  	if @reservation.valid?
      ReservationMailer.message_me(@reservation).deliver_now
      flash[:success] = "Merci, nous vous contacterons dès que possible"
  		redirect_to new_reservation_path
  	else
  		render :new
  	end
  end

  private

  def reservation_params
  	params.require(:reservation).permit(:firstname, :lastname, :address, :zipcode, :city, 
      :phone, :email, :arrival, :departure, :howmany, :comment)
  end
end
