class ReservationMailer < ApplicationMailer

	default :to => 'stachowski.alexandra@hotmail.fr'

	def message_me(reserv)
		@reserv = reserv

		mail from: @reserv.email, 
				 subject: "New reservation",
				 body: [@reserv.firstname, @reserv.lastname, @reserv.address, @reserv.zipcode,
				 @reserv.city, @reserv.phone, @reserv.arrival, @reserv.departure, @reserv.howmany, @reserv.comment  ]
	end
end
