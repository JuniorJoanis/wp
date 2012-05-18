class User < ActiveRecord::Base
  attr_accessible :name, :postal
  has_many :offers
  
  def add_offer(offer, date)
    puts "add offer running ---"
    user_offer = self.offers.new(
      :name => offer.name,
      :postal => offer.postal,
      :date => date
    )
    user_offer.save
  end
end
