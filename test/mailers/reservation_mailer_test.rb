require 'test_helper'

class ReservationMailerTest < ActionMailer::TestCase
  
  test "message me" do
  	reserv = Reservation.new(
  		firstname: 'Jean Paul', 
  		lastname: 'Dupont', 
  		address: '', 
  		zipcode: '', 
  		city: '', 
  	  phone: '02.32.55.66.55', 
  	  email: 'jean.dupond@exemple.fr', 
  	  arrival: '02.05.2016', 
  	  departure: '02.03.2016', 
  	  howmany: '', 
  	  comment: ''
  		)

  	email = ReservationMailer.message_me(reserv).deliver_now

  	refute ActionMailer::Base.deliveries.empty?

  	assert_equal ['stachowski.alexandra@hotmail.fr'], email.to
  	assert_equal ['jean.dupond@exemple.fr'], email.from
  end
end
