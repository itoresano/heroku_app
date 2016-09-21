class Category < ActiveRecord::Base
  has_many :spendings
  belongs_to :plan
end
