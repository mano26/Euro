class Player < ActiveRecord::Base
  attr_accessible :direction, :genaric, :house, :month, :price, :quantity, :strategy, :strike, :year
end
