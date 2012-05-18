class DashboardController < ApplicationController
  def assign
    if params[:date].present?
      assign_result = true
      date = Date.new(params[:date][:year].to_i,params[:date][:month].to_i,params[:date][:day].to_i)
      
      User.all.each{ |user|
         assign_result &&= user.add_offer(closest_offer(user.postal), date)
      }  
      flash[:notice] = assign_result ?  "Offers successfully assigned" : "You already assigned offers for this date" 
     end
  end
  
  def closest_offer value
    Offer.find(:first, :conditions => { :default => true }, :order => "ABS (postal - #{value})  asc")
  end
end
