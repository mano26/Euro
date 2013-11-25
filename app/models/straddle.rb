class Straddle < ActiveRecord::Base
  attr_accessible :ask, :bid, :month, :strike, :year
end
