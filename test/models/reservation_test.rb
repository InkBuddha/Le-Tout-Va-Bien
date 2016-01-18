require 'test_helper'

class ReservationTest < ActiveSupport::TestCase

  test 'respond to name, email, subject and content' do
  	reserv = Reservation.new
  	[:firstname, :lastname, :address, :zipcode, :city, 
  	 :phone, :email, :arrival, :departure, :howmany, :comment].each do |attr|
  	 	assert reserv.respond_to? attr
  	 end 
  end

  test 'should accept valid attributes' do
  	valid_attrs = {
  		firstname: 'Jane', 
  		lastname: 'Doe', 
  		address: '4th Love Street', 
  		zipcode: '69000', 
  		city: 'San Francisco', 
  	  phone: '06.11.22.33.44', 
  	  email: 'jane.doe@example.com', 
  	  arrival: '01.02.2016', 
  	  departure: '02.02.2016', 
  	  howmany: '1', 
  	  comment: 'With a small dog'
  	}

  	reserv = Reservation.new valid_attrs

  	assert reserv.valid?
  end

  test 'attributes can not be blank' do
  	reserv = Reservation.new
  	refute reserv.valid?
  end
end
