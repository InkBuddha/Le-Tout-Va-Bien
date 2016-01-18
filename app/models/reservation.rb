class Reservation
	include ActiveModel::Model
	attr_accessor :firstname, :lastname, :address, :zipcode, :city, 
  	 :phone, :email, :arrival, :departure, :howmany, :comment
  validates :firstname, :lastname, :phone, :email, :arrival, :departure, presence: true
end
