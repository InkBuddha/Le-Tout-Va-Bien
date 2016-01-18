require 'test_helper'

class ReservationsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test 'successful post' do

  	post :create, reservation: {
  		firstname: 'John', 
  		lastname: 'Doe', 
  		address: '7th Love Street', 
  		zipcode: '69000', 
  		city: 'San Francisco', 
  	  phone: '06.55.66.77.88', 
  	  email: 'john.doe@example.com', 
  	  arrival: '01.02.2016', 
  	  departure: '02.02.2016', 
  	  howmany: '1', 
  	  comment: 'With a small dog'
  	}

  	assert_redirected_to new_reservation_path
  	last_email = ActionMailer::Base.deliveries.last

  	assert_equal "John", last_email.firstname
  	assert_equal 'stachowski.alexandra@hotmail.fr', last_email.to[0]
  	assert_equal 'john.doe@example.com', last_email.from[0]
  	assert_equal "With a small dog", last_email.comment

  	ActionMailer::Base.deliveries.clear
  end

  test 'failed post' do

  	post :create, reservation: {\
  		firstname: '', 
  		lastname: '', 
  		address: '', 
  		zipcode: '', 
  		city: '', 
  	  phone: '', 
  	  email: '', 
  	  arrival: '', 
  	  departure: '', 
  	  howmany: '', 
  	  comment: ''
  	}

  	[:firstname, :lastname, :phone, :email, :arrival, :departure].each do |attr|
  	 	assert_select 'li', "#{attr.capitalize} can't be blank"
  	end
  end

end
