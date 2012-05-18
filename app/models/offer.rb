class Offer < ActiveRecord::Base
  attr_accessible :name, :postal, :default, :date, :user_id
  belongs_to :user
  validate :postal, :allow_nil => false 
  validates_uniqueness_of :user_id, :scope => [:name, :date]
end
