class Ride < ActiveRecord::Base
  belongs_to :attraction
  belongs_to :user


  def take_ride
	  	if user.tickets >= attraction.tickets && user.height >= attraction.min_height
	  	user.tickets -= attraction.tickets
	  	user.nausea += attraction.nausea_rating
	  	user.happiness += attraction.happiness_rating
	  	user.save
	elsif user.tickets < attraction.tickets && user.height < attraction.min_height
		"Sorry. You do not have enough tickets to ride the Roller Coaster. You are not tall enough to ride the Roller Coaster."
	elsif user.tickets >= attraction.tickets && user.height < attraction.min_height
	 	"Sorry. You are not tall enough to ride the #{attraction.name}."
	elsif user.tickets < attraction.tickets && user.height >= attraction.min_height
	  	"Sorry. You do not have enough tickets to ride the #{attraction.name}."
  	end

  end
end
